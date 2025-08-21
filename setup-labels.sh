#!/bin/bash

# GitHub Labels Setup Script for PMD/Checkstyle Issue Categorization
# This script creates all necessary labels for the issue categorization system
# 
# Prerequisites:
# - GitHub CLI (gh) installed and authenticated
# - Repository permissions to manage labels
#
# Usage: ./setup-labels.sh

echo "🏷️  Setting up labels for PMD/Checkstyle issue categorization..."

# Primary tool labels
echo "Creating primary tool labels..."
gh label create "pmd" --description "Issues related to code quality analysis with PMD" --color "d73a4a" --force
gh label create "checkstyle" --description "Issues related to code style and formatting with Checkstyle" --color "0075ca" --force

# Category labels
echo "Creating category labels..."
gh label create "code-quality" --description "Code quality and best practices" --color "ff6b6b" --force
gh label create "code-style" --description "Code style and formatting standards" --color "4ecdc4" --force

# Severity labels
echo "Creating severity labels..."
gh label create "critical" --description "Critical severity - immediate attention required" --color "b60205" --force
gh label create "major" --description "Major severity - should be addressed promptly" --color "fbca04" --force
gh label create "minor" --description "Minor severity - can be addressed in due course" --color "0e8a16" --force

# Priority labels
echo "Creating priority labels..."
gh label create "high-priority" --description "High priority - address quickly" --color "d93f0b" --force
gh label create "medium-priority" --description "Medium priority - normal workflow" --color "fbca04" --force
gh label create "low-priority" --description "Low priority - when time permits" --color "0e8a16" --force

# PMD specific labels
echo "Creating PMD-specific labels..."
gh label create "pmd-best-practices" --description "PMD Best Practices rules" --color "ffb3ba" --force
gh label create "pmd-design" --description "PMD Design rules" --color "ffdfba" --force
gh label create "pmd-error-prone" --description "PMD Error Prone rules" --color "ffffba" --force
gh label create "pmd-performance" --description "PMD Performance rules" --color "baffc9" --force
gh label create "pmd-security" --description "PMD Security rules" --color "bae1ff" --force

# Checkstyle specific labels
echo "Creating Checkstyle-specific labels..."
gh label create "checkstyle-formatting" --description "Checkstyle formatting rules" --color "e1baff" --force
gh label create "checkstyle-naming" --description "Checkstyle naming convention rules" --color "ffb3e6" --force
gh label create "checkstyle-javadoc" --description "Checkstyle Javadoc rules" --color "c9baff" --force
gh label create "checkstyle-imports" --description "Checkstyle import rules" --color "baefff" --force
gh label create "checkstyle-whitespace" --description "Checkstyle whitespace rules" --color "e6ffba" --force

echo "✅ All labels have been created successfully!"
echo ""
echo "📋 Labels Summary:"
echo "   - Tool labels: pmd, checkstyle"
echo "   - Category labels: code-quality, code-style"
echo "   - Severity labels: critical, major, minor"
echo "   - Priority labels: high-priority, medium-priority, low-priority"
echo "   - PMD specific: 5 category labels"
echo "   - Checkstyle specific: 5 category labels"
echo ""
echo "🚀 Your repository is now ready for categorized issue management!"