---
title: "Siphon CLI Commands"
description: "Comprehensive list of Siphon CLI commands and options."
---

# Siphon CLI Commands

## Options

- `-i`, `--include`: Include file patterns.
- `-e`, `--exclude`: Exclude file patterns.
- `-o`, `--output`: Output file name.
- `--tokenizer`: Tokenizer for token count estimation (`gpt3`, `claude`).

## Example: Token Count Estimation

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

[View Examples](examples.md)
