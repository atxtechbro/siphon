---
title: "Examples"
description: "Practical examples demonstrating how to use Siphon CLI."
---

# Examples

Siphon CLI offers powerful options for managing and extracting Git repository contents efficiently. Below are detailed examples to showcase its versatility in various scenarios.

## Example 1: Include Specific File Types

Extract all Python files from a Git repository and save the output in `python_files.txt`.

```bash
si -i "*.py" -o python_files.txt
```

### Use Cases:

- Ideal when you want to extract only code files for analysis.
- Combine file types or directories to target specific file patterns.

#### Additional Example:

Include Python and Markdown files:

```bash
si -i "*.py" "*.md" -o code_and_docs.txt
```

---

## Example 2: Exclude Directories or Files

Exclude specific directories or file types from the output. In this example, all files are included except those in the `tests/` directory.

```bash
si -e "tests/*" -o no_tests.txt
```

### Use Cases:

- Skipping tests or documentation files in favor of core code.
- Excluding large, unnecessary directories to reduce output size.

#### Additional Example:

Exclude temporary files and logs:

```bash
si -e "*.log" "*.tmp" -o clean_output.txt
```

---

## Example 3: Interactive File Selection

Interactive mode allows you to choose files interactively during extraction. Siphon will prompt you for each file in the repository.

```bash
si --interactive -o selected_files.txt
```

### Use Cases:

- Great for when you only need to extract a few important files manually.
- Useful when you're unsure of exact filenames and want to decide as you go.

---

## Example 4: Creating a Compressed Archive

Package your repository contents into a `.tar` archive. This example compresses the output into a tarball file.

```bash
si -f tar -o repo_archive.tar
```

### Use Cases:

- Perfect for packaging a repository to send to another developer or store for later use.
- Compressing large codebases or datasets into a single archive for easy storage.

---

## Example 5: Estimating Token Counts for Large Language Models (LLMs)

Use the `--tokenizer` option to estimate token counts for specific LLMs, which is useful for determining how much text can be processed by models like GPT-3 or Claude.

```bash
si --tokenizer gpt3 -o context_with_tokens.txt
```

### Use Cases:

- Useful for preparing repository content to fit within token limits for LLM-based tools.
- Estimate the number of tokens in the extracted content for accurate LLM queries.

#### Additional Example:

Estimate tokens for Claude:

```bash
si --tokenizer claude -o claude_context.txt
```

---

## Example 6: Copy Output to Clipboard

Quickly copy the output to the clipboard instead of saving it to a file, which is especially useful in workflows where the output needs to be pasted directly into another tool.

```bash
si --clipboard
```

### Use Cases:

- Streamline workflows by directly copying extracted content to share in chats, emails, or documentation.
- Quick access to repository contents without creating a file.

---

## Example 7: Print to Standard Output

Print the extracted content to standard output, which is useful for quickly viewing or piping the results into other command-line tools.

```bash
si --stdout
```

### Use Cases:

- Ideal for quick inspection or further processing with tools like `grep` or `sed`.
- Viewing output without writing to a file.

#### Additional Example:

Pipe the output into `grep` to filter for specific content:

```bash
si --stdout | grep "def"
```

This will extract the content and show only lines containing the `def` keyword (e.g., Python function definitions).

---

## Example 8: Combining Multiple Options

You can combine multiple options for more complex workflows. In this example, Siphon extracts Python files, excludes test files, and copies the output to the clipboard.

```bash
si -i "*.py" -e "tests/*" --clipboard
```

### Use Cases:

- Combine various filters and output options for maximum flexibility.
- Extract only relevant parts of a large repository and make the content available in your clipboard instantly.

---

## Example 9: Caching and Future Features

Siphon’s future features will include caching for faster repeated extractions. You can enable caching now with the `--cache` option, though it's a placeholder for upcoming functionality.

```bash
si --cache -o cached_output.txt
```

### Use Cases:

- Speed up frequent extractions in large repositories.
- Prepare for future updates to Siphon that will support more robust caching mechanisms.
