#!/bin/bash
# File: scripts/gitlab/create-group-runner.sh
# Description: Creates a GitLab group runner via the GitLab API using glab CLI

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed. Please install jq first."
    exit 1
fi

# Check if glab is installed
if ! command -v glab &> /dev/null; then
    echo "Error: glab is required but not installed. Please install the GitLab CLI first."
    exit 1
fi

# Default values
DESCRIPTION="Group Runner"
TAGS="group,linux"
RUN_UNTAGGED=true
LOCKED=false

# Function to display usage information
function show_usage {
    echo "Usage: $0 -g <group-name> [-d <description>] [-t <tags>]"
    echo "Options:"
    echo "  -g  Group name to search for (required)"
    echo "  -d  Runner description (default: 'Group Runner')"
    echo "  -t  Comma-separated list of tags (default: 'group,linux')"
    echo "  -u  Set run_untagged to false (default: true)"
    echo "  -l  Set locked to true (default: false)"
    echo "  -h  Show this help message"
    exit 1
}

# Parse command line arguments
while getopts "g:d:t:ulh" opt; do
    case $opt in
        g) GROUP_NAME="$OPTARG" ;;
        d) DESCRIPTION="$OPTARG" ;;
        t) TAGS="$OPTARG" ;;
        u) RUN_UNTAGGED=false ;;
        l) LOCKED=true ;;
        h) show_usage ;;
        *) show_usage ;;
    esac
done

# Check if group name is provided
if [ -z "$GROUP_NAME" ]; then
    echo "Error: Group name is required"
    show_usage
fi

echo "Creating runner for group: $GROUP_NAME"
echo "Description: $DESCRIPTION"
echo "Tags: $TAGS"
echo "Run untagged: $RUN_UNTAGGED"
echo "Locked: $LOCKED"

# Get group ID
echo "Searching for group..."
GROUP_ID=$(glab api "groups?search=$GROUP_NAME" | jq '.[0].id')

if [ -z "$GROUP_ID" ] || [ "$GROUP_ID" = "null" ]; then
    echo "Error: Group not found"
    exit 1
fi

echo "Found group ID: $GROUP_ID"

# Get registration token
echo "Getting runner registration token..."
RUNNERS_TOKEN=$(glab api "groups/$GROUP_ID" | jq -r '.runners_token')

# Debug: Print token (first 5 chars)
if [ ! -z "$RUNNERS_TOKEN" ] && [ "$RUNNERS_TOKEN" != "null" ]; then
    TOKEN_PREVIEW=${RUNNERS_TOKEN:0:5}
    echo "Token retrieved (starts with: $TOKEN_PREVIEW...)"
else
    echo "Warning: Token may be empty or null"
fi

if [ -z "$RUNNERS_TOKEN" ] || [ "$RUNNERS_TOKEN" = "null" ]; then
    echo "Error: Could not retrieve runners token"
    exit 1
fi

echo "Retrieved runner registration token"

# Create runner
echo "Creating runner..."
RESPONSE=$(glab api "runners" --method POST \
     --raw-field "token=$RUNNERS_TOKEN" \
     --raw-field "description=$DESCRIPTION" \
     --raw-field "tag_list=$TAGS" \
     --raw-field "run_untagged=$RUN_UNTAGGED" \
     --raw-field "locked=$LOCKED" \
     --raw-field "runner_type=group_type")

RUNNER_ID=$(echo $RESPONSE | jq '.id')
if [ -z "$RUNNER_ID" ] || [ "$RUNNER_ID" = "null" ]; then
    echo "Error creating runner. Response: $RESPONSE"
    exit 1
fi

echo "Runner created successfully!"
echo "Runner ID: $RUNNER_ID"
echo "For group ID: $GROUP_ID"

# Display runner details
echo "Runner details:"
glab api "runners/$RUNNER_ID" | jq '{id, description, status, tag_list, is_shared: .is_shared}'