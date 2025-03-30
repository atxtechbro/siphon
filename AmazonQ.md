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
