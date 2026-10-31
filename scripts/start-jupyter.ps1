# Launcher script for JupyterLab with jupyter_datalayer MCP configuration
$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
Set-Location $projectRoot

Write-Host "Starting JupyterLab on http://127.0.0.1:8888/?token=agentic ..."
& "$projectRoot\.venv\Scripts\jupyter.exe" lab --port 8888 --IdentityProvider.token=agentic --ip=127.0.0.1 --no-browser
