import argparse
import fnmatch
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

import git


def parse_arguments():
    parser = argparse.ArgumentParser(
        description='Siphon - Efficiently extract and compress repository contents for LLMs.'
    )
    parser.add_argument(
        'path', nargs='?', default='.', help='Path to the Git repository'
    )
    parser.add_argument(
        '-i', '--include', nargs='*', help='Include file patterns (e.g., *.py, src/)'
    )
    parser.add_argument(
        '-e', '--exclude', nargs='*', help='Exclude file patterns (e.g., tests/, *.md)'
    )
    parser.add_argument(
        '-o', '--output', default='output.txt', help='Output file name'
    )
    parser.add_argument(
        '-f', '--format',
        choices=['text', 'tar', 'markdown'],
        default='text',
        help='Output format'
    )
    parser.add_argument(
        '-c', '--cache', action='store_true', help='Enable caching'
    )
    parser.add_argument(
        '--tokenizer',
        choices=['gpt3', 'claude'],
        default='gpt3',
        help='Tokenizer for token count estimation'
    )
    parser.add_argument(
        '--interactive', action='store_true', help='Interactive mode for file selection'
    )
    parser.add_argument(
        '--clipboard', action='store_true', help='Copy output to clipboard'
    )
    parser.add_argument(
        '--stdout', action='store_true', help='Print output to stdout'
    )
    return parser.parse_args()

def collect_tracked_files(repo):
    # Use splitlines() to handle different line endings
    tracked_files = repo.git.ls_files().splitlines()
    # Remove empty strings and normalize paths
    tracked_files = [os.path.normpath(f.strip()) for f in tracked_files if f.strip()]
    return tracked_files

def match_patterns(path, patterns):
    for pattern in patterns:
        if fnmatch.fnmatch(path, pattern):
            return True
    return False

def collect_files(args, repo_path, repo):
    tracked_files = collect_tracked_files(repo)
    exclude_dirs = {'venv', 'env', '.venv', '__pycache__'}
    filtered_files = []
    for file in tracked_files:
        file_parts = Path(file).parts
        if any(part in exclude_dirs for part in file_parts):
            continue
        filtered_files.append(file)
    # Apply include patterns
    if args.include:
        filtered_files = [
            f for f in filtered_files if match_patterns(f, args.include)
        ]
    # Apply exclude patterns
    if args.exclude:
        filtered_files = [
            f for f in filtered_files if not match_patterns(f, args.exclude)
        ]
    return filtered_files

def interactive_selection(files):
    selected_files = []
    print("Interactive File Selection:")
    for idx, file in enumerate(files):
        choice = input(f"Include {file}? (y/n): ").lower()
        if choice == 'y':
            selected_files.append(file)
    return selected_files

def estimate_tokens(text, tokenizer='gpt3'):
    # Simple token estimation based on word count
    words = text.split()
    tokens = len(words)  # Simplified estimation
    return tokens

def main():
    args = parse_arguments()
    repo_path = os.path.abspath(args.path)
    if not os.path.exists(repo_path):
        print("Repository path does not exist.")
        sys.exit(1)
    try:
        repo = git.Repo(repo_path)
    except git.InvalidGitRepositoryError:
        print("Not a valid Git repository.")
        sys.exit(1)
    files = collect_files(args, repo_path, repo)
    if args.interactive:
        files = interactive_selection(files)
    temp_dir = tempfile.mkdtemp()
    try:
        collected_text = ''
        for file in files:
            file_path = os.path.join(repo_path, file)
            # Ensure that the path is a file
            if not os.path.isfile(file_path):
                print(f"Skipping {file}: Not a file")
                continue
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    collected_text += f"\n\n# File: {file}\n{content}"
            except Exception as e:
                print(f"Skipping file {file}: {e}")
                continue  # Skip unreadable files
        token_count = estimate_tokens(collected_text, args.tokenizer)
        print(f"Estimated tokens: {token_count}")
        if args.format == 'text':
            output_path = os.path.join(temp_dir, args.output)
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(collected_text)
        elif args.format == 'markdown':
            output_path = os.path.join(temp_dir, args.output)
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(f"## Repository: {os.path.basename(repo_path)}\n")
                f.write(collected_text)
        elif args.format == 'tar':
            output_path = os.path.join(temp_dir, args.output)
            # Create a temporary directory to store the files
            temp_repo_dir = os.path.join(temp_dir, 'repo_contents')
            os.makedirs(temp_repo_dir, exist_ok=True)
            for file in files:
                src_file = os.path.join(repo_path, file)
                dst_file = os.path.join(temp_repo_dir, file)
                os.makedirs(os.path.dirname(dst_file), exist_ok=True)
                shutil.copy2(src_file, dst_file)
            shutil.make_archive(output_path.replace('.tar', ''), 'tar', temp_repo_dir)
            output_path += '.tar'
        if args.clipboard:
            try:
                if sys.platform == 'win32':
                    # Encode as UTF-8, then decode back to handle emojis correctly
                    subprocess.run('clip', universal_newlines=True, input=collected_text.encode('utf-8').decode('utf-8'))
                elif sys.platform == 'darwin':
                    subprocess.run('pbcopy', universal_newlines=True, input=collected_text)
                else:
                    # Use xclip on Linux, ensure UTF-8 compatibility
                    subprocess.run(['xclip', '-selection', 'clipboard'], input=collected_text, text=True)
            except Exception as e:
                print(f"Failed to copy to clipboard: {e}")
        if args.stdout:
            print(collected_text)
        else:
            final_output_path = os.path.join(os.getcwd(), args.output)
            shutil.move(output_path, final_output_path)
            print(f"Output saved to {final_output_path}")
    finally:
        shutil.rmtree(temp_dir)

if __name__ == '__main__':
    main()
