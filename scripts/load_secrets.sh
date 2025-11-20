#!/usr/bin/env bash
# Load global secrets for the project
# This script sources the global environment files if they exist.
# It follows the priority order defined by the universal_secrets module.

if [ -f "$HOME/.config/secrets/global.env" ]; then
  # Load from ~/.config/secrets/global.env
  set -a
  source "$HOME/.config/secrets/global.env"
  set +a
elif [ -f "$HOME/.secrets/global.env" ]; then
  # Fallback to ~/.secrets/global.env
  set -a
  source "$HOME/.secrets/global.env"
  set +a
fi

# Export any loaded variables for downstream processes
export
