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

Wolf Studios Inc Agent — Quick Reference
========================================

HOW TO USE
----------

1. MAIN AGENT (@wolf-studios)
   - Open GitHub Copilot Chat in VS Code (Ctrl+Shift+I or the chat icon)
   - In the agent picker at the top of chat, select "@wolf-studios"
   - Now every message you type goes through the Wolf Studios agent
   - It can write code, debug, check project health, and auto-fix issues

2. SLASH COMMAND (/work)
   - Type /work in the chat input
   - This runs a full health check and auto-repair on your project
   - You can say "/work full scan" or "/work fix the build errors"

3. SUB-AGENTS (used automatically)
   - @code-writer   — Called by wolf-studios when code needs to be written
   - @diagnostics   — Called by wolf-studios when scanning for problems
   - @auto-fixer    — Called by wolf-studios when fixing issues

EXAMPLES
--------

Chat with @wolf-studios selected:

  "Check my project for errors and fix them"
  "Write a function that parses CSV files"
  "Why is my build failing?"
  "Run a full health check"
  "/work full scan"

FILE STRUCTURE
--------------

.github/
  copilot-instructions.md          — Project-wide coding standards (always active)
  agents/
    wolf-studios.agent.md          — Main orchestrator agent
    code-writer.agent.md           — Code generation sub-agent
    diagnostics.agent.md           — Error scanning sub-agent
    auto-fixer.agent.md            — Autonomous fixing sub-agent
  instructions/
    coding-standards.instructions.md — Naming, error handling, security rules
  skills/
    work/SKILL.md                  — /work slash command workflow

SHARING WITH OTHER PEOPLE (Team Members)
-----------------------------------------

The agent lives inside the .github/ folder, so it ships with your repo.
Anyone who clones or pulls your repo gets the agent automatically.

Requirements for team members:
  1. VS Code with GitHub Copilot Chat extension installed
  2. An active GitHub Copilot subscription (Individual, Business, or Enterprise)
  3. That's it — no extra setup needed

Steps for a team member:
  1. Clone the repo (or pull the latest changes)
  2. Open the project folder in VS Code
  3. Open Copilot Chat (Ctrl+Shift+I)
  4. Select @wolf-studios in the agent picker
  5. Start chatting — the agent, sub-agents, skills, and instructions all load automatically

If you use Git:
  - The .github/ folder is already tracked by Git by default
  - Just commit and push — teammates get the agent on their next pull
  - Example:
      git add .github/
      git commit -m "Add Wolf Studios agent"
      git push

USING IN YOUR OTHER PROJECTS
------------------------------

Option 1: Copy the .github/ folder (Recommended)
  - Copy the entire .github/ folder from this project into any other project
  - That's it — open the project in VS Code and @wolf-studios is available
  - Windows command:
      xcopy /E /I "e:\aicode\WolfStudiosIncagent\.github" "e:\aicode\YourOtherProject\.github"
  - PowerShell:
      Copy-Item -Recurse "e:\aicode\WolfStudiosIncagent\.github" "e:\aicode\YourOtherProject\.github"

Option 2: Git Submodule (for synced updates)
  - If the agent repo is on GitHub, add it as a submodule in other projects
  - This way, updating the agent in one place updates it everywhere
  - Example:
      cd YourOtherProject
      git submodule add <repo-url> .github

Option 3: Template Repository
  - On GitHub, go to the repo Settings and check "Template repository"
  - Now when creating new projects, click "Use this template"
  - Every new project starts with the agent pre-installed

Option 4: Personal User-Level Agent (works in ALL projects without copying)
  - Copy agent files to your VS Code user profile folder:
      Windows: %APPDATA%\Code\User\prompts\
  - Files placed here are available in EVERY project you open
  - Copy these files:
      wolf-studios.agent.md   -> %APPDATA%\Code\User\prompts\agents\wolf-studios.agent.md
      code-writer.agent.md    -> %APPDATA%\Code\User\prompts\agents\code-writer.agent.md
      diagnostics.agent.md    -> %APPDATA%\Code\User\prompts\agents\diagnostics.agent.md
      auto-fixer.agent.md     -> %APPDATA%\Code\User\prompts\agents\auto-fixer.agent.md
  - Note: Skills and instructions must stay in each project's .github/ folder
  - The agents will work everywhere, but /work and coding-standards are per-project

QUICK COPY COMMANDS (Windows PowerShell)
-----------------------------------------

Copy agent to another project:
  Copy-Item -Recurse "e:\aicode\WolfStudiosIncagent\.github" "PATH_TO_YOUR_PROJECT\.github"

Install agents globally (user-level, all projects):
  $dest = "$env:APPDATA\Code\User\prompts\agents"
  New-Item -ItemType Directory -Force -Path $dest
  Copy-Item "e:\aicode\WolfStudiosIncagent\.github\agents\*.agent.md" $dest

CURRENT GLOBAL INSTALL STATUS
-------------------------------

Agents are installed globally at:
  C:\Users\WolfStudios\AppData\Roaming\Code\User\prompts\agents\

Installed agents:
  - wolf-studios.agent.md   (main orchestrator)
  - code-writer.agent.md    (code generation + project building)
  - diagnostics.agent.md    (error scanning + health checks)
  - auto-fixer.agent.md     (autonomous fixing)

These agents are now available in EVERY project you open in VS Code.
To update them after making changes, re-run:
  Copy-Item "e:\aicode\WolfStudiosIncagent\.github\agents\*.agent.md" "$env:APPDATA\Code\User\prompts\agents" -Force

AGENT CAPABILITIES SUMMARY
----------------------------

  @wolf-studios can:
    - Write code (any language)
    - Build entire projects from scratch (scaffold, configure, implement)
    - Debug and diagnose problems
    - Check project health and status
    - Auto-fix errors, lint warnings, and test failures
    - Run builds and tests

  /work slash command:
    - Full health check + auto-repair workflow

SHARING WITH FRIENDS & FAMILY (WORLDWIDE)
-------------------------------------------

REQUIREMENTS FOR ANYONE USING THIS:
  1. VS Code installed (free: https://code.visualstudio.com)
  2. GitHub Copilot extension installed in VS Code
  3. A GitHub Copilot subscription (Individual, Business, or Enterprise)
  4. That's it — no coding experience needed to install

HOW TO SHARE:

  Option A: Send them the GitHub link (Easiest)
    1. Share this repo link: https://github.com/WolfStudiosInc/WolfStudiosIncagent
    2. They click the green "Code" button -> "Download ZIP"
    3. Extract the ZIP anywhere on their computer
    4. Double-click install.bat (Windows) or run install.sh (Mac/Linux)
    5. Done — open VS Code, select @wolf-studios in chat

  Option B: Send files directly
    1. Zip this entire folder and send it (email, Discord, Google Drive, etc.)
    2. They extract it and double-click install.bat (Windows)
    3. Or run: bash install.sh (Mac/Linux)
    4. Or run: powershell ./install.ps1 (any OS with PowerShell)

INSTALL SCRIPTS INCLUDED:
  - install.bat    — Windows (double-click to run)
  - install.sh     — macOS / Linux (run: bash install.sh)
  - install.ps1    — PowerShell on any OS (run: powershell ./install.ps1)

WHAT THE INSTALLER DOES:
  - Copies the 4 agent files to VS Code's global prompts folder
  - Works automatically on Windows, macOS, and Linux
  - No admin rights needed
  - Safe to run multiple times (just updates the files)

INSTALL LOCATIONS BY OS:
  Windows:  %APPDATA%\Code\User\prompts\agents\
  macOS:    ~/Library/Application Support/Code/User/prompts/agents/
  Linux:    ~/.config/Code/User/prompts/agents/

AFTER INSTALLING:
  1. Open VS Code
  2. Open Copilot Chat (Ctrl+Shift+I on Windows, Cmd+Shift+I on Mac)
  3. Select @wolf-studios from the agent picker
  4. Type a request like "build me a website" or "check this project for errors"

TROUBLESHOOTING:
  If the agent doesn't show up after installing:
    1. Close VS Code completely (make sure it's not still running in the system tray)
    2. Reopen VS Code
    3. Open Copilot Chat — @wolf-studios should now appear in the agent picker
    This is normal — VS Code only loads new agents on startup.

NOTES
-----

(Add your notes here for later)
