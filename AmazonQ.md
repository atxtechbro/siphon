# Git Workflow Guidelines

## Pull Requests

Use the type/description format for all PRs:

- `feat/add-new-feature`
- `fix/resolve-bug-issue`
- `docs/update-readme`
- `refactor/improve-code-structure`
- `test/add-unit-tests`
- `chore/update-dependencies`

## Commit Messages

Follow the Conventional Commits style:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

Examples:
- `feat: add file filtering option`
- `fix: resolve token count calculation bug`
- `docs: update installation instructions`
- `refactor(parser): improve code organization`
- `test: add unit tests for extraction module`
- `chore: update dependencies`

## GitHub CLI Commands

Use GitHub CLI (`gh`) for GitHub operations:

### Pull Requests

```bash
# Create a PR
gh pr create --title "type: description" --body "Details about the PR" --head branch-name --base main

# List PRs
gh pr list

# Check out a PR
gh pr checkout PR_NUMBER

# Review a PR
gh pr review PR_NUMBER --approve
gh pr review PR_NUMBER --comment -b "Looking good!"
gh pr review PR_NUMBER --request-changes -b "Please fix these issues"

# Merge a PR
gh pr merge PR_NUMBER
```

### Issues

```bash
# Create an issue
gh issue create --title "Issue title" --body "Issue description"

# List issues
gh issue list

# Close an issue
gh issue close ISSUE_NUMBER
```

### Releases

```bash
# Create a release
gh release create v1.0.0 --title "v1.0.0" --notes "Release notes"

# List releases
gh release list
```

## Git Best Practices

### Preserving Git History

When renaming or modifying files, follow these practices to preserve Git history:

1. **Always use `git mv` for renaming files** instead of deleting and creating new ones
   ```bash
   git mv old_filename.txt new_filename.txt
   ```

2. **Don't change more than 50% of a file's content in the same commit as a rename**
   - Git's rename detection algorithm struggles to track history when content changes exceed ~50%
   - Instead, use multiple commits:
     ```bash
     # First commit - just rename
     git mv old_file.txt new_file.txt
     git commit -m "chore: rename old_file to new_file"
     
     # Second commit - modify content
     # Edit new_file.txt
     git add new_file.txt
     git commit -m "feat: update content in new_file"
     ```

3. **For viewing history across renames**, use:
   ```bash
   git log --follow filename
   ```

4. **For complex refactoring**, consider using smaller, incremental commits to help Git track changes more effectively

Remember: Git's history tracking is based on content similarity. Keeping changes smaller and more focused helps maintain a clear history trail.
