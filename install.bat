@echo off
REM ==============================================================================
REM Copyright (c) 2026 Wolf Studios Inc. All rights reserved.
REM Created: April 6, 2026
REM Developer: Neko Wolf Dev
REM Year: 2026
REM
REM PROPRIETARY AND CONFIDENTIAL
REM This file is the exclusive property of Wolf Studios Inc.
REM Unauthorized copying, modification, distribution, or use of this file,
REM in whole or in part, is strictly prohibited without prior written
REM permission from Wolf Studios Inc.
REM
REM This copyright notice may NOT be removed, altered, or obscured.
REM ==============================================================================
echo.
echo  ========================================
echo   Wolf Studios Inc - Agent Installer
echo  ========================================
echo.

:: Set destination folder
set "DEST=%APPDATA%\Code\User\prompts\agents"

:: Create folder if it doesn't exist
if not exist "%DEST%" (
    echo  Creating agent folder...
    mkdir "%DEST%"
)

:: Copy agent files
echo  Installing agents...
copy /Y "%~dp0.github\agents\*.agent.md" "%DEST%" >nul

echo.
echo  Installed agents:
echo    - wolf-studios.agent.md   (main agent)
echo    - code-writer.agent.md    (code generation + building)
echo    - diagnostics.agent.md    (error scanning)
echo    - auto-fixer.agent.md     (autonomous fixing)
echo.
echo  Location: %DEST%
echo.
echo  ========================================
echo   Installation complete!
echo  ========================================
echo.
echo  HOW TO USE:
echo    1. Open any project in VS Code
echo    2. Open Copilot Chat (Ctrl+Shift+I)
echo    3. Select @wolf-studios in the agent picker
echo    4. Start chatting!
echo.
echo  For the /work command and coding standards,
echo  copy the .github folder into your project:
echo    xcopy /E /I "%~dp0.github" "YOUR_PROJECT\.github"
echo.
pause
