#!/bin/bash
# ==============================================================================
# Copyright (c) 2026 Wolf Studios Inc. All rights reserved.
# Created: April 6, 2026
# Developer: Neko Wolf Dev
# Year: 2026
#
# PROPRIETARY AND CONFIDENTIAL
# This file is the exclusive property of Wolf Studios Inc.
# Unauthorized copying, modification, distribution, or use of this file,
# in whole or in part, is strictly prohibited without prior written
# permission from Wolf Studios Inc.
#
# This copyright notice may NOT be removed, altered, or obscured.
# ==============================================================================
echo ""
echo "  ========================================"
echo "   Wolf Studios Inc - Agent Installer"
echo "  ========================================"
echo ""

# Determine OS and set destination
if [[ "$OSTYPE" == "darwin"* ]]; then
    DEST="$HOME/Library/Application Support/Code/User/prompts/agents"
else
    DEST="$HOME/.config/Code/User/prompts/agents"
fi

# Create folder if it doesn't exist
if [ ! -d "$DEST" ]; then
    echo "  Creating agent folder..."
    mkdir -p "$DEST"
fi

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy agent files
echo "  Installing agents..."
cp "$SCRIPT_DIR/.github/agents/"*.agent.md "$DEST/"

echo ""
echo "  Installed agents:"
echo "    - wolf-studios.agent.md   (main agent)"
echo "    - code-writer.agent.md    (code generation + building)"
echo "    - diagnostics.agent.md    (error scanning)"
echo "    - auto-fixer.agent.md     (autonomous fixing)"
echo ""
echo "  Location: $DEST"
echo ""
echo "  ========================================"
echo "   Installation complete!"
echo "  ========================================"
echo ""
echo "  HOW TO USE:"
echo "    1. Open any project in VS Code"
echo "    2. Open Copilot Chat (Ctrl+Shift+I)"
echo "    3. Select @wolf-studios in the agent picker"
echo "    4. Start chatting!"
echo ""
echo "  For the /work command and coding standards,"
echo "  copy the .github folder into your project:"
echo "    cp -r \"$SCRIPT_DIR/.github\" YOUR_PROJECT/.github"
echo ""
