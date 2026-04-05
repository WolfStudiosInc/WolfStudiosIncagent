---
name: work
description: "End-to-end problem diagnosis and autonomous fixing workflow. Use when: project has errors, tests are failing, build is broken, code has bugs, or a full health check with auto-repair is needed."
argument-hint: "Describe the problem or say 'full scan' for a complete health check"
---

# Diagnose and Fix — Wolf Studios Inc

Full-cycle workflow for finding problems and fixing them autonomously.

## When to Use

- Build is broken or producing errors
- Tests are failing
- User reports a bug or unexpected behavior
- Project health check is needed
- After a major refactor or dependency update

## Procedure

### Phase 1: Discovery

1. Scan the workspace for all compile and lint errors
2. Check project configuration files for issues
3. Look for broken imports, missing dependencies, and type errors
4. If a test runner is configured, run the test suite
5. Collect all findings into a list

### Phase 2: Triage

1. Sort issues by severity:
   - **Critical**: Build failures, runtime crashes, security vulnerabilities
   - **High**: Failing tests, type errors, broken functionality
   - **Medium**: Lint warnings, code quality issues
   - **Low**: Informational, style suggestions
2. Identify dependencies between issues (fix A may resolve B)
3. Plan the fix order — fix root causes first

### Phase 3: Fix

For each issue, starting with critical:

1. Read the relevant code
2. Identify the root cause
3. Apply the minimal fix
4. Verify the fix resolved the issue
5. Check for regressions
6. Move to the next issue

### Phase 4: Verification

1. Re-scan the full workspace for remaining errors
2. Re-run the test suite if available
3. Compare before/after issue counts

### Phase 5: Report

Produce a summary:

```
## Diagnose & Fix Report

### Before
- Errors: N | Warnings: N | Tests failing: N

### Fixes Applied
1. [file] — What was fixed and why
2. [file] — What was fixed and why

### After
- Errors: N | Warnings: N | Tests failing: N

### Remaining Issues
- [file] — Issue that requires manual intervention

### Recommendations
- Suggested follow-up actions
```
