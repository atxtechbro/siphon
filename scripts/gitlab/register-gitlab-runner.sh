#!/bin/bash
# File: register-gitlab-runner.sh
# Description: Registers a GitLab runner at the user level

# Default values
DESCRIPTION="Local Development Runner"
TAGS="main-only,secure"
RUN_UNTAGGED=true
EXECUTOR="shell"

# Function to display usage information
function show_usage {
    echo "Usage: $0 -t <registration-token> [-d <description>] [-g <tags>] [-u] [-e <executor>]"
    echo "Options:"
    echo "  -t  Registration token (required)"
    echo "  -d  Runner description (default: 'Local Development Runner')"
    echo "  -g  Comma-separated list of tags (default: 'main-only,secure')"
    echo "  -u  Set run_untagged to false (default: true)"
    echo "  -e  Executor to use (default: 'shell')"
    echo "  -h  Show this help message"
    exit 1
}

# Parse command line arguments
while getopts "t:d:g:ue:h" opt; do
    case $opt in
        t) TOKEN="$OPTARG" ;;
        d) DESCRIPTION="$OPTARG" ;;
        g) TAGS="$OPTARG" ;;
        u) RUN_UNTAGGED=false ;;
        e) EXECUTOR="$OPTARG" ;;
        h) show_usage ;;
        *) show_usage ;;
    esac
done

# Check if token is provided
if [ -z "$TOKEN" ]; then
    echo "Error: Registration token is required"
    show_usage
fi

echo "Registering runner with the following settings:"
echo "Description: $DESCRIPTION"
echo "Tags: $TAGS"
echo "Run untagged: $RUN_UNTAGGED"
echo "Executor: $EXECUTOR"

# Register the runner
gitlab-runner register \
  --url "https://gitlab.com/" \
  --registration-token "$TOKEN" \
  --description "$DESCRIPTION" \
  --tag-list "$TAGS" \
  --run-untagged="$RUN_UNTAGGED" \
  --executor "$EXECUTOR" \
  --non-interactive

# Check if registration was successful
if [ $? -eq 0 ]; then
    echo "Runner registered successfully!"
    echo "Starting runner..."
    gitlab-runner start
else
    echo "Error registering runner."
    exit 1
fi