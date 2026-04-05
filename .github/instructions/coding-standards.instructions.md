---
description: "Wolf Studios Inc coding standards and conventions. Use when: writing new code, reviewing code quality, refactoring, or ensuring code follows project conventions."
---

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
