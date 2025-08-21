# Issue Categorization Guide

This guide helps categorize code quality issues based on the appropriate tool for resolution: PMD or Checkstyle.

## PMD Issues (Tag: `pmd`)

PMD focuses on detecting potential bugs, performance issues, and code complexity problems.

### Typical PMD Issues:
- **Code Complexity**: Methods/classes that are too complex
- **Unused Code**: Unused variables, imports, or methods
- **Potential Bugs**: Null pointer risks, resource leaks
- **Performance**: Inefficient string operations, unnecessary object creation
- **Design Patterns**: Violations of common design principles
- **Security**: Basic security vulnerabilities

### PMD Rule Categories:
- Best Practices
- Code Style (overlaps with Checkstyle)
- Design
- Documentation
- Error Prone
- Multithreading
- Performance
- Security

## Checkstyle Issues (Tag: `checkstyle`)

Checkstyle focuses on code formatting, style conventions, and structural requirements.

### Typical Checkstyle Issues:
- **Formatting**: Indentation, whitespace, line length
- **Naming Conventions**: Class, method, variable naming
- **File Structure**: Package declarations, import order
- **Javadoc**: Missing or malformed documentation
- **Annotations**: Proper placement and formatting
- **Modifiers**: Order of access modifiers

### Checkstyle Check Categories:
- Annotations
- Block Checks
- Class Design
- Coding
- Headers
- Imports
- Javadoc Comments
- Metrics
- Miscellaneous
- Modifiers
- Naming Conventions
- Regexp
- Size Violations
- Whitespace

## Decision Matrix

| Issue Type | Tool | Rationale |
|------------|------|-----------|
| Line too long | Checkstyle | Formatting rule |
| Unused variable | PMD | Code analysis |
| Missing Javadoc | Checkstyle | Documentation formatting |
| Complex method | PMD | Code quality analysis |
| Wrong indentation | Checkstyle | Formatting rule |
| Potential null pointer | PMD | Bug detection |
| Improper naming | Checkstyle | Style convention |
| Performance issue | PMD | Code analysis |

## Tagging Guidelines

When creating issues:
1. **Analyze the root cause**: Is it about style/formatting or code quality/bugs?
2. **Apply appropriate tag**:
   - Use `pmd` tag for logic, complexity, and potential bug issues
   - Use `checkstyle` tag for formatting, style, and structural issues
3. **Add severity level**: `critical`, `major`, `minor`
4. **Include rule reference**: Mention specific PMD/Checkstyle rule if known

## Example Issue Titles

### PMD Issues:
- `[PMD] Unused variable in UserService.java`
- `[PMD] Complex method exceeds cyclomatic complexity threshold`
- `[PMD] Potential null pointer dereference in calculateScore()`

### Checkstyle Issues:
- `[Checkstyle] Line length exceeds 120 characters in DatabaseUtil.java`
- `[Checkstyle] Missing Javadoc for public method validateInput()`
- `[Checkstyle] Improper indentation in ConfigParser.java`