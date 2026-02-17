# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- **Swift Version**: Upgraded from Swift 4.2 to Swift 5.7
- **Xcode Requirements**: Now requires Xcode 14.0+
- **CI/CD**: Migrated from Travis CI to GitHub Actions
  - Added comprehensive CI workflow with test, lint, and pod validation jobs
  - Set minimal security permissions for GITHUB_TOKEN
- Modernized String.isNumeric() implementation to use Swift 5.7 APIs (`allSatisfy` + `character.isNumber`)
- Improved Luhn algorithm implementation in CardType.swift:
  - Replaced NSMutableArray with native Swift arrays
  - Eliminated force casting with safer type conversion
  - More idiomatic and performant Swift code
- Refactored Expiry.swift date parsing:
  - Moved regex to static constant to avoid repeated compilation
  - Added proper documentation for force unwrapping usage
- Updated README with Swift 5.7 requirements and linting instructions
- Updated README badges to use GitHub Actions instead of Travis CI

### Added
- **SwiftLint**: Added SwiftLint configuration (.swiftlint.yml) for code quality enforcement
  - Configured with sensible defaults and opt-in rules
  - Integrated into CI pipeline
- **GitHub Actions CI**: Replaced Travis CI with modern GitHub Actions workflow
  - Automated testing on pull requests
  - SwiftLint checks on all PRs
  - Pod lib lint validation
  - Security-hardened with minimal permissions
- CHANGELOG.md to track project changes
- Deprecation notice in .travis.yml indicating migration to GitHub Actions

### Removed
- Duplicate test directory (Pod/Tests/) - consolidated all tests in CaishenTests/
  - Removed outdated CaishenTests.swift from Pod/Tests/
  - All test implementations preserved in CaishenTests/ directory

### Fixed
- Removed deprecated `self.measureBlock` usage in tests (already using modern `self.measure`)
- Properly documented force unwrapping in Expiry date component accessors
- Added SwiftLint exception for valid force_try usage in regex compilation

### Security
- Added minimal permissions block to GitHub Actions workflow following security best practices
- CodeQL analysis: All security alerts addressed and resolved

## [2.2.1] - Previous Release

Previous releases and their changes are available in the Git history.

[Unreleased]: https://github.com/prolificinteractive/caishen/compare/2.2.1...HEAD
[2.2.1]: https://github.com/prolificinteractive/caishen/releases/tag/2.2.1
