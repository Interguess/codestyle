# Quick Reference: PMD vs Checkstyle

A quick decision guide for categorizing code quality issues.

## Decision Tree

```
Is the issue about...?
├── Code formatting, style, or structure?
│   └── Use Checkstyle ➜ Tag: `checkstyle`
│
└── Code logic, complexity, or potential bugs?
    └── Use PMD ➜ Tag: `pmd`
```

## Common Issue Types

| Issue | Tool | Example |
|-------|------|---------|
| Line too long | Checkstyle | Line exceeds 120 characters |
| Missing Javadoc | Checkstyle | Public method lacks documentation |
| Unused variable | PMD | Variable declared but never used |
| Complex method | PMD | Method has high cyclomatic complexity |
| Wrong indentation | Checkstyle | Inconsistent spacing/tabs |
| Null pointer risk | PMD | Potential NullPointerException |
| Naming convention | Checkstyle | Method doesn't follow camelCase |
| Performance issue | PMD | Inefficient string concatenation |
| Import order | Checkstyle | Imports not alphabetically sorted |
| Dead code | PMD | Unreachable code blocks |

## Tag Combinations

### PMD Issues
```
Required: pmd
Category: code-quality
Severity: critical | major | minor
Priority: high-priority | medium-priority | low-priority
Specific: pmd-best-practices | pmd-design | pmd-error-prone | pmd-performance | pmd-security
```

### Checkstyle Issues
```
Required: checkstyle
Category: code-style
Severity: critical | major | minor
Priority: high-priority | medium-priority | low-priority
Specific: checkstyle-formatting | checkstyle-naming | checkstyle-javadoc | checkstyle-imports | checkstyle-whitespace
```

## Example Issue Creation

### PMD Issue Example
```
Title: [PMD] Unused variable 'tempResult' in calculateScore method
Labels: pmd, code-quality, major, medium-priority, pmd-best-practices
```

### Checkstyle Issue Example
```
Title: [Checkstyle] Line length exceeds limit in UserController.java
Labels: checkstyle, code-style, minor, low-priority, checkstyle-formatting
```

## When in Doubt

If you're unsure which tool to use:

1. **Format/Style related** ➜ Checkstyle
2. **Logic/Bug related** ➜ PMD
3. **Both could apply** ➜ Choose the primary concern and add both tags