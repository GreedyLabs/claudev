#!/bin/sh
export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION=global
export ANTHROPIC_VERTEX_PROJECT_ID=$(gcloud config get-value project)
echo "Using Anthropic Vertex project: $ANTHROPIC_VERTEX_PROJECT_ID"
exec "$(brew --prefix)/bin/claude" "$@"
