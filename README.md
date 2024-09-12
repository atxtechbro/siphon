# Siphon

Efficiently extract, compress, and cache Git repository contexts for seamless integration with Large Language Models (LLMs).

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Version](https://img.shields.io/pypi/v/siphon-cli)
![Python Versions](https://img.shields.io/pypi/pyversions/siphon-cli)
![Downloads](https://img.shields.io/pypi/dm/siphon-cli)

---

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Arguments](#arguments)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## Features

- **Efficient Extraction**: Extracts and compresses repository contents while respecting `.gitignore` rules.
- **Customizable Filtering**: Include or exclude files and directories with ease.
- **Multiple Output Formats**: Supports text, tarball, and markdown formats optimized for LLM contexts.
- **Caching and Chunking**: Pre-cache large repositories for faster querying.
- **Token Count Estimations**: Get token counts for specific LLMs like GPT-3 and Claude.
- **Clipboard and Stdout Support**: Streamline workflows with seamless copying options.
- **Modularity**: Extend functionality with community-driven extensions.
- **Interactive Mode**: Granular file selection through an interactive interface.

---

## Installation

Install Siphon using `pip`:

```bash
pip install siphon-cli
```

---

## Usage

Navigate to your Git repository and run:

```bash
si -o context.txt
```

This command extracts the repository content into `context.txt`.

---

## Examples

- **Include Specific File Types**:

  ```bash
  si -i '*.py' -o python_files.txt
  ```

- **Exclude Directories**:

  ```bash
  si -e 'tests/*' -o code_without_tests.txt
  ```

- **Interactive Mode**:

  ```bash
  si --interactive -o selected_files.txt
  ```

- **Copy Output to Clipboard**:

  ```bash
  si --clipboard
  ```

---

## Arguments

- `path`: Path to the Git repository (default: current directory).
- `-i`, `--include`: Include file patterns (e.g., `*.py`, `src/`).
- `-e`, `--exclude`: Exclude file patterns (e.g., `tests/`, `*.md`).
- `-o`, `--output`: Output file name (default: `output.txt`).
- `-f`, `--format`: Output format (`text`, `tar`, `markdown`).
- `-c`, `--cache`: Enable caching (future feature placeholder).
- `--tokenizer`: Tokenizer for token count estimation (`gpt3`, `claude`).
- `--interactive`: Interactive mode for file selection.
- `--clipboard`: Copy output to clipboard.
- `--stdout`: Print output to stdout.

---

## Project Files

### **.gitignore**

```gitignore
venv
```

### **setup.py**

```python
from setuptools import find_packages, setup

setup(
    name='siphon-cli',
    version='0.1.0',
    author='Morgan Joyce',
    author_email='morganj2k@gmail.com',
    description='A tool to efficiently extract and compress Git repository contents for LLMs.',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/atxtechbro/siphon',
    packages=find_packages(),
    py_modules=['siphon'],
    install_requires=[
        'gitpython',
        'colorama',
    ],
    entry_points={
        'console_scripts': [
            'si=siphon:main',
        ],
    },
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
```

### **siphon.py**

```python
#!/usr/bin/env python

import argparse
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
        if Path(path).match(pattern):
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
                    subprocess.run('clip', universal_newlines=True, input=collected_text)
                elif sys.platform == 'darwin':
                    subprocess.run('pbcopy', universal_newlines=True, input=collected_text)
                else:
                    subprocess.run('xclip', universal_newlines=True, input=collected_text)
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
```

---

## Contributing

We welcome contributions from the community! To contribute:

1. **Fork the repository**.

2. **Create a new branch**:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Commit your changes**:

   ```bash
   git commit -am 'Add a new feature'
   ```

4. **Push to the branch**:

   ```bash
   git push origin feature/your-feature-name
   ```

5. **Open a Pull Request**.

Please read our [Contributing Guidelines](CONTRIBUTING.md) for more details.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

- **Email**: [morganj2k@gmail.com](mailto:morganj2k@gmail.com)
- **GitHub**: [atxtechbro](https://github.com/atxtechbro)
- **Project Link**: [https://github.com/atxtechbro/siphon](https://github.com/atxtechbro/siphon)

---
