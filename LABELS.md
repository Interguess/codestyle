# GitHub Labels Configuration

This file defines the labels that should be created in the repository for proper issue categorization.

## Tool-based Labels

### Primary Tool Labels
- `pmd` - Issues that should be resolved using PMD
  - Color: `#d73a4a` (red)
  - Description: "Issues related to code quality analysis with PMD"

- `checkstyle` - Issues that should be resolved using Checkstyle
  - Color: `#0075ca` (blue)
  - Description: "Issues related to code style and formatting with Checkstyle"

## Category Labels

### Issue Types
- `code-quality` - General code quality issues
  - Color: `#ff6b6b`
  - Description: "Code quality and best practices"

- `code-style` - Style and formatting issues
  - Color: `#4ecdc4`
  - Description: "Code style and formatting standards"

### Severity Labels
- `critical` - Critical issues that must be fixed immediately
  - Color: `#b60205`
  - Description: "Critical severity - immediate attention required"

- `major` - Important issues that should be fixed soon
  - Color: `#fbca04`
  - Description: "Major severity - should be addressed promptly"

- `minor` - Minor issues that can be fixed when convenient
  - Color: `#0e8a16`
  - Description: "Minor severity - can be addressed in due course"

### Priority Labels
- `high-priority` - High priority issues
  - Color: `#d93f0b`
  - Description: "High priority - address quickly"

- `medium-priority` - Medium priority issues
  - Color: `#fbca04`
  - Description: "Medium priority - normal workflow"

- `low-priority` - Low priority issues
  - Color: `#0e8a16`
  - Description: "Low priority - when time permits"

## Rule Category Labels

### PMD Categories
- `pmd-best-practices` - PMD Best Practices rules
- `pmd-design` - PMD Design rules
- `pmd-error-prone` - PMD Error Prone rules
- `pmd-performance` - PMD Performance rules
- `pmd-security` - PMD Security rules

### Checkstyle Categories
- `checkstyle-formatting` - Checkstyle formatting rules
- `checkstyle-naming` - Checkstyle naming convention rules
- `checkstyle-javadoc` - Checkstyle Javadoc rules
- `checkstyle-imports` - Checkstyle import rules
- `checkstyle-whitespace` - Checkstyle whitespace rules

## Example Label Commands (GitHub CLI)

```bash
# Create primary tool labels
gh label create "pmd" --description "Issues related to code quality analysis with PMD" --color "d73a4a"
gh label create "checkstyle" --description "Issues related to code style and formatting with Checkstyle" --color "0075ca"

# Create category labels
gh label create "code-quality" --description "Code quality and best practices" --color "ff6b6b"
gh label create "code-style" --description "Code style and formatting standards" --color "4ecdc4"

# Create severity labels
gh label create "critical" --description "Critical severity - immediate attention required" --color "b60205"
gh label create "major" --description "Major severity - should be addressed promptly" --color "fbca04"
gh label create "minor" --description "Minor severity - can be addressed in due course" --color "0e8a16"
```