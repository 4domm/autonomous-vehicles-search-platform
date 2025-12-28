#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

docker build \
  -f "$SCRIPT_DIR/models-cpu.Dockerfile" \
  -t avsp-models \
  "$SCRIPT_DIR/../.."
