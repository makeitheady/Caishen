# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- **Swift Version**: Upgraded from Swift 4.2 to Swift 5.7
- **Xcode Requirements**: Now requires Xcode 14.0+
- Modernized String.isNumeric() implementation to use Swift 5.7 APIs
- Improved date handling in Expiry to avoid force unwrapping
- Updated README with Swift 5.7 requirements and linting instructions

### Added
- **SwiftLint**: Added SwiftLint configuration (.swiftlint.yml) for code quality enforcement
- **GitHub Actions CI**: Replaced Travis CI with modern GitHub Actions workflow
  - Automated testing on pull requests
  - SwiftLint checks on all PRs
  - Pod lib lint validation
- CHANGELOG.md to track project changes

### Removed
- Duplicate test directory (Pod/Tests/) - consolidated all tests in CaishenTests/
- Travis CI configuration (replaced with GitHub Actions)

### Fixed
- Removed deprecated `self.measureBlock` usage in tests (already using modern `self.measure`)

## [2.2.1] - Previous Release

Previous releases and their changes are available in the Git history.

[Unreleased]: https://github.com/prolificinteractive/caishen/compare/2.2.1...HEAD
[2.2.1]: https://github.com/prolificinteractive/caishen/releases/tag/2.2.1
