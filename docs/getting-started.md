---
title: "Getting Started with Siphon"
description: "Learn how to start using Siphon CLI with basic commands."
---

# Getting Started with Siphon

After installing Siphon, navigate to your Git repository and run:

```bash
si -o context.txt
```

## Token Count Estimation

Siphon CLI now supports token count estimation for specific LLMs like GPT-3 and Claude. This feature helps you determine how much text can be processed by these models.

To estimate token counts, use the `--tokenizer` option:

```bash
si --tokenizer gpt3 -o context_with_tokens.txt
```

This command will estimate the number of tokens in the extracted content and save the output to `context_with_tokens.txt`.

You can also estimate tokens for Claude:

```bash
si --tokenizer claude -o claude_context.txt
```
