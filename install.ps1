<#
==============================================================================
Copyright (c) 2026 Wolf Studios Inc. All rights reserved.
Created: April 6, 2026
Developer: Neko Wolf Dev
Year: 2026

PROPRIETARY AND CONFIDENTIAL
This file is the exclusive property of Wolf Studios Inc.
Unauthorized copying, modification, distribution, or use of this file,
in whole or in part, is strictly prohibited without prior written
permission from Wolf Studios Inc.

This copyright notice may NOT be removed, altered, or obscured.
==============================================================================

.SYNOPSIS
    Wolf Studios Inc - Agent Installer for PowerShell
.DESCRIPTION
    Installs Wolf Studios Inc agents globally for VS Code.
    Works on Windows, macOS, and Linux.
#>

Write-Host ""
Write-Host "  ========================================" -ForegroundColor Cyan
Write-Host "   Wolf Studios Inc - Agent Installer" -ForegroundColor Cyan
Write-Host "  ========================================" -ForegroundColor Cyan
Write-Host ""

# Determine destination based on OS
if ($IsWindows -or $env:OS -eq "Windows_NT") {
    $dest = Join-Path $env:APPDATA "Code\User\prompts\agents"
} elseif ($IsMacOS) {
    $dest = Join-Path $HOME "Library/Application Support/Code/User/prompts/agents"
} else {
    $dest = Join-Path $HOME ".config/Code/User/prompts/agents"
}

# Create folder if needed
if (-not (Test-Path $dest)) {
    Write-Host "  Creating agent folder..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path $dest | Out-Null
}

# Get script directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$agentSource = Join-Path $scriptDir ".github\agents"

# Copy agents
Write-Host "  Installing agents..." -ForegroundColor Yellow
Copy-Item "$agentSource\*.agent.md" $dest -Force

Write-Host ""
Write-Host "  Installed agents:" -ForegroundColor Green
Write-Host "    - wolf-studios.agent.md   (main agent)"
Write-Host "    - code-writer.agent.md    (code generation + building)"
Write-Host "    - diagnostics.agent.md    (error scanning)"
Write-Host "    - auto-fixer.agent.md     (autonomous fixing)"
Write-Host ""
Write-Host "  Location: $dest" -ForegroundColor Gray
Write-Host ""
Write-Host "  ========================================" -ForegroundColor Green
Write-Host "   Installation complete!" -ForegroundColor Green
Write-Host "  ========================================" -ForegroundColor Green
Write-Host ""
Write-Host "  HOW TO USE:"
Write-Host "    1. Open any project in VS Code"
Write-Host "    2. Open Copilot Chat (Ctrl+Shift+I)"
Write-Host "    3. Select @wolf-studios in the agent picker"
Write-Host "    4. Start chatting!"
Write-Host ""
Write-Host "  For /work command and coding standards," -ForegroundColor Yellow
Write-Host "  copy .github folder into your project:" -ForegroundColor Yellow
Write-Host "    Copy-Item -Recurse '$scriptDir\.github' 'YOUR_PROJECT\.github'"
Write-Host ""
