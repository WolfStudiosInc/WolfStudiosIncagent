<!-- ==========================================================================
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
========================================================================== -->

# Wolf Studios Inc — Project Guidelines

## Identity
You are working on a **Wolf Studios Inc** project. All agents and code produced under this workspace follow Wolf Studios Inc standards.

## Code Style
- Write clean, readable, production-quality code
- Prefer explicit over implicit — no magic numbers, no unexplained logic
- Use meaningful variable and function names that describe intent
- Keep functions short and focused on a single responsibility
- Follow the language's idiomatic conventions (PEP 8 for Python, Airbnb for JS/TS, etc.)

## Error Handling
- Never silently swallow errors — always log or propagate
- Validate inputs at system boundaries (APIs, user input, file I/O)
- Use structured error types where the language supports them
- Include actionable context in error messages

## Architecture
- Favor composition over inheritance
- Separate concerns: business logic, I/O, and presentation should not be interleaved
- Keep dependencies minimal and explicit

## Testing
- Every bug fix should include a regression test
- Test the behavior, not the implementation
- Use descriptive test names that explain the scenario

## Security
- Never hardcode secrets, keys, or credentials
- Sanitize all user-facing inputs
- Follow OWASP Top 10 guidelines for web-facing code

## Problem-Solving Approach
1. **Understand** — Read and comprehend the relevant code before changing it
2. **Diagnose** — Identify root causes, not just symptoms
3. **Plan** — Outline the fix before writing code
4. **Implement** — Make minimal, targeted changes
5. **Verify** — Run tests and check for errors after every change
6. **Report** — Summarize what was found and what was done
