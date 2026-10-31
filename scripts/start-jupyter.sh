#!/usr/bin/env bash
# Launcher script for JupyterLab with jupyter_datalayer MCP configuration
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_ROOT"

if [ -f ".venv/Scripts/jupyter.exe" ]; then
    JUPYTER_BIN=".venv/Scripts/jupyter.exe"
elif [ -f ".venv/bin/jupyter" ]; then
    JUPYTER_BIN=".venv/bin/jupyter"
else
    echo "jupyter binary not found in .venv" >&2
    exit 1
fi

echo "Starting JupyterLab on http://127.0.0.1:8888/?token=agentic ..."
"$JUPYTER_BIN" lab --port 8888 --IdentityProvider.token=agentic --ip=127.0.0.1 --no-browser
