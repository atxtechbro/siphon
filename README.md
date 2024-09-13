# Siphon

Efficiently extract, compress, and cache Git repository contexts for seamless integration with Large Language Models (LLMs).

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Python Versions](https://img.shields.io/pypi/pyversions/siphon-cli)
![Version](https://img.shields.io/pypi/v/siphon-cli)
![Build Status](https://github.com/atxtechbro/siphon/actions/workflows/release.yml/badge.svg)
![Coverage](https://codecov.io/gh/atxtechbro/siphon/branch/main/graph/badge.svg)
![Downloads](https://img.shields.io/pypi/dm/siphon-cli)
![Issues](https://img.shields.io/github/issues/atxtechbro/siphon)
![PyPI](https://img.shields.io/pypi/v/siphon-cli.svg)

<a href="https://www.fundedbyyc.com" target="_blank" class="yc-widget" style="display:inline-block;background-color:#FF6600;color:#FFFFFF;padding:10px 20px;text-decoration:none;border-radius:5px;font-weight:bold;font-family:Avenir, ui-sans-serif, system-ui, sans-serif">Funded by YC (Your Cents) 😉</a>

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

"Trigger release"
