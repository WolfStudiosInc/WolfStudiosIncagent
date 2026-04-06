---
description: "Wolf Studios Inc coding standards and conventions. Use when: writing new code, reviewing code quality, refactoring, or ensuring code follows project conventions."
---

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

# Wolf Studios Inc — Coding Standards

## General

- Functions should do one thing and do it well
- Maximum function length: ~30 lines (guideline, not a hard rule)
- Prefer early returns over deep nesting
- Use guard clauses to handle edge cases first

## Naming

- **Variables**: descriptive nouns (`userCount`, `activeSessions`)
- **Functions**: verb phrases (`calculateTotal`, `fetchUserById`)
- **Booleans**: question form (`isActive`, `hasPermission`, `canExecute`)
- **Constants**: UPPER_SNAKE_CASE (`MAX_RETRIES`, `API_BASE_URL`)
- **Classes**: PascalCase (`UserService`, `PaymentProcessor`)

## Error Handling

```
// DO: Structured errors with context
throw new AppError('User not found', { userId, statusCode: 404 });

// DON'T: Bare throws without context
throw new Error('not found');

// DON'T: Silent catch
try { ... } catch (e) { }
```

## Imports

- Group imports: stdlib → external packages → internal modules
- Use absolute imports where the project supports them
- Remove unused imports

## Security Checklist

- [ ] No hardcoded secrets, tokens, or API keys
- [ ] User inputs are sanitized before use
- [ ] SQL queries use parameterized statements
- [ ] File paths are validated against traversal attacks
- [ ] Authentication checks are present on protected routes
