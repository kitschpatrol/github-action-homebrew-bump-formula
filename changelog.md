# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Documentation

- Add license and latest-release badges to the README.

### Maintenance

- Add mdat checks and Markdown updates to the lint and fix scripts.
- Refresh pnpm and shared Markdown/formatting tooling, adjust package release-age exceptions and simplify deep cleanup.

## [10.0.2] - 2026-10-27

### Fixed

- Skip Livecheck bumps with an open pull request for the same formula version unless `force` is enabled, and log the existing PR links.

### Maintenance

- Update pnpm and release workflow actions, and remove the temporary package release-age exception.

## [10.0.1] - 2026-10-08

### Changed

- Credit this fork in generated pull request descriptions.

### Documentation

- Correct the lazygit workflow example link.

### Maintenance

- Configure Fork Tender's upstream repository and branch explicitly.

## [10.0.0] - 2026-10-08

### Added

- Add a `branch` input to target a non-default tap branch when creating bump pull requests.

### Changed

- Stop enabling Homebrew developer mode during action setup.

### Fixed

- Fix immediate post-release PyPI bumps in third-party taps by bypassing the release cooldown only for the bumped package.

### Documentation

- Document branch selection and custom pull request messages in workflow examples.
- Explain source-URL version requirements and the exception for Git-based formulae.

### Maintenance

- Add scheduled and pull-request link checks for repository Markdown and configured websites.
- Migrate to pnpm 12, refresh formatting and release dependencies, pin workflow actions and rename deep cleanup to `clean-deep`.

## [8.0.0] - 2026-09-05

### Fixed

- Trust custom taps before loading their formulae.
- Use `SystemCommand.safe_system` for Homebrew and Git commands to support Homebrew versions that removed the previous helper.

### Maintenance

- Add scheduled upstream synchronization with Fork Tender.
- Automate GitHub releases and major-version tag synchronization with bumpp and release workflows.
- Refresh pnpm, Prettier and checkout tooling, and declare shx for cleanup scripts.

## [7.0.3] - 2026-05-14

### Maintenance

- Fix integration tests with `no_fork: true` and trigger them for pull requests affecting the action or its tests.

## [7.0.2] - 2026-05-14

### Fixed

- Warn and finish successfully when whole-tap Livecheck finds no formulae, including empty and casks-only taps.

### Maintenance

- Migrate contributor tooling to pnpm 11, refresh Prettier and repository configuration, and preserve local Claude settings during cleanup.

## [7.0.1] - 2026-03-31

### Maintenance

- Restore manual standard and Livecheck integration tests, clean up bump PRs and branches between stages, and update the PyPI fixture to Python 3.13.
- Pin checkout revisions, restrict workflow permissions and disable persisted checkout credentials.
- Refresh pnpm, Prettier and metadata-sync tooling, update package authorship metadata and remove the duplicate metadata workflow.

## [7.0.0] - 2026-02-28

### Added

- Add a `tap_url` input for taps with nonstandard repository names or external hosting.

### Changed

- Enable Homebrew developer mode during setup and apply Linuxbrew PATH setup only on Linux runners.

### Fixed

- Restore `force` behavior by patching Homebrew to bypass duplicate pull request checks.
- Support Homebrew 5.0's output utility loading while retaining Homebrew 4.x compatibility.
- Avoid GitHub's user lookup when a custom commit identity is supplied, allowing application tokens when both identity fields are set.

### Documentation

- Recommend triggering standard bumps on the GitHub release `released` event, with tag pushes as an alternative.
- Identify the fork and explain that its package manifest serves metadata and contributor scripts.

### Maintenance

- Add pnpm-based contributor tooling, Prettier lint/fix scripts and editor configuration with a Node.js 22 minimum for tooling.
- Add local formula test fixtures and fork metadata synchronization, and remove inherited integration-test and Dependabot automation.

## [3.11.0] - 2024-02-14

### Added

- Add `user_name` and `user_email` inputs to override the Git identity used for formula commits.

### Documentation

- Show custom commit identities in standard and Livecheck workflow examples.

## [3.10.1] - 2023-12-12

### Fixed

- Use `brew tap --force` for `homebrew/core` when no custom tap is supplied, and skip core setup for custom taps.

### Documentation

- Make the custom personal access token requirement more explicit in the Livecheck example.

## [3.10.0] - 2023-04-07

### Added

- Add a `no_fork` input to create bump branches in the origin repository instead of forking.

### Documentation

- Document `no_fork` in the standard workflow example.

## [3.9.0] - 2023-02-22

### Changed

- Delegate archive URL and Python resource updates to Homebrew, removing action-managed PyPI URL rewriting and pipgrip installation.

### Fixed

- Always tap `homebrew/core` before bumping formulae so Homebrew can resolve them.

### Maintenance

- Run whole-tap Livecheck tests directly on Ubuntu and refresh checkout actions and the PyPI test target.

## [3.8.3] - 2022-10-03

### Fixed

- Add Linuxbrew to `GITHUB_PATH` in a separate setup step so it is available before `brew update-reset` runs.

## [3.8.2] - 2022-10-03

### Fixed

- Preserve the runner's PATH while adding Linuxbrew through `GITHUB_PATH`, avoiding replacement of system executable paths.

## [3.8.1] - 2022-10-03

### Fixed

- Set executable search paths so the action can find Homebrew on Linux and macOS runners.

### Documentation

- Correct the standard-mode token guidance to require both `public_repo` and `workflow` scopes.
- Update runner guidance to state Ubuntu and macOS support without the previous core-tap caveat.

### Maintenance

- Migrate GitHub Actions dependency updates to GitHub-native Dependabot.
- Serialize integration runs with workflow concurrency and refresh checkout tooling.

## [3.8.0] - 2021-04-18

### Added

- Add an `org` input to create tap repository forks in a selected GitHub organization.

### Documentation

- Document organization-owned forks in standard and Livecheck examples.

## [3.7.2] - 2021-04-06

### Fixed

- Restrict Livecheck to formulae so casks are excluded from formula bump processing.

## [3.7.1] - 2021-03-08

### Fixed

- Use Homebrew's supported GitHub REST API helper for commit-identity lookup.

### Documentation

- Include the `workflow` scope in the personal access token creation link.
- Add workflow examples for GitVersion, evernote2md and driftctl.

## [3.7.0] - 2021-02-06

### Added

- Support PyPI formula bumps in standard and Livecheck modes, resolving source URLs and installing pipgrip when needed to update Python resources.

### Maintenance

- Add integration coverage for PyPI formulae in standard and Livecheck modes.

## [3.6.1] - 2021-01-30

### Fixed

- Show stderr from captured Homebrew commands so Livecheck failures expose their diagnostics.

## [3.6.0] - 2021-01-30

### Documentation

- Clarify personal access token scopes and recommend scheduling Livecheck workflows in the tap repository.
- Add a git-delta workflow example.

### Maintenance

- Refactor input environment handling and command execution to use Homebrew's configured executable paths; remove unused helpers and debug bypasses.

## [3.5.1] - 2020-12-21

### Changed

- Restore `--no-audit` for Livecheck bumps.

## [3.5.0] - 2020-12-11

### Changed

- Allow Homebrew audits to run when creating Livecheck bump pull requests.

### Documentation

- Recommend macOS runners for core formula bumps because Ubuntu can encounter compatibility issues.

## [3.4.1] - 2020-09-01

### Added

- Allow Livecheck mode to run without specifying a tap or formula.

### Changed

- Run Livecheck without adding the `homebrew/livecheck` tap.

## [3.4.0] - 2020-08-28

### Changed

- Switch to a composite shell action that invokes Homebrew and Ruby directly, eliminating the Node.js launcher and JavaScript runtime dependencies.

## [3.3.1] - 2020-08-21

### Fixed

- Explicitly load Homebrew's Formula API before resolving formulae.

### Documentation

- Clarify that providing only `tap` in Livecheck mode checks and bumps all outdated formulae in that tap.

### Maintenance

- Run integration tests on every branch push while ignoring README-only changes.

## [3.3.0] - 2020-07-25

### Changed

- Pass an explicit version when bumping archive-based formulae in standard mode.
- Let Homebrew resolve Livecheck source URLs and Git revisions from the detected version.

### Maintenance

- Consolidate formula-input normalization and command logging, keeping logged commands on one line.

## [3.2.0] - 2020-07-24

### Added

- Add a `message` input for custom text in generated pull request bodies.

### Documentation

- Add a workflow example from the nef project.

### Maintenance

- Test custom pull request messages, including multiline text.

## [3.1.1] - 2020-07-07

### Fixed

- Update Homebrew before loading the Ruby entry point so it runs against the updated Homebrew installation.

### Documentation

- Explain multi-formula Livecheck inputs and tap selection, and add real-world workflow examples.

### Maintenance

- Adjust Ubuntu/macOS test placement and shorten waits between integration jobs.

## [3.1.0] - 2020-06-30

### Added

- Accept multiple Livecheck formula names separated by commas, spaces or newlines.

### Changed

- Report launcher failures through GitHub Actions error annotations.

### Fixed

- Skip Livecheck results without version information.
- Build fallback commit email addresses from the authenticated user's login instead of the workflow actor or profile name.

### Documentation

- Restore Ubuntu runner support guidance and clarify tap naming in examples.

### Maintenance

- Add `@actions/core` and consolidate checked Homebrew/Git output helpers.
- Extend CI coverage for multiple formulae and Ubuntu execution, and coordinate repeated bump tests with forced updates and waits.

## [3.0.3] - 2020-05-03

### Fixed

- Look up commit identity from the token's authenticated GitHub user instead of the workflow actor.

### Maintenance

- Update the `@actions/exec` requirement to `^1.0.4`.
- Run all integration test jobs on macOS while Ubuntu lacks Homebrew.

## [3.0.2] - 2020-04-28

### Fixed

- Attempt all Livecheck bumps before reporting a failure when any individual bump fails.
- Resolve Git-based Livecheck revisions from a shallow checkout of the release tag and strip trailing newlines from the SHA.

### Documentation

- Clarify that Ubuntu runner images currently lack Homebrew and macOS should be used.

## [3.0.1] - 2020-04-22

### Fixed

- Locate the bundled Ruby script relative to the installed action directory and report launcher errors.

## [3.0.0] - 2020-04-20

### Added

- Add Livecheck mode to discover outdated formulae and open bump pull requests for one formula or an entire tap.
- Add a separate `tap` input for selecting and installing custom taps independently of formula names.

### Changed

- **Breaking:** Replace Docker execution with a Node.js 12 launcher using `@actions/exec` and the runner's Homebrew installation, enabling native macOS runs.

### Documentation

- Document runner support and standard versus scheduled Livecheck workflows.

### Maintenance

- Expand integration CI to cover standard bumps and single-formula and whole-tap Livecheck on macOS and Ubuntu.

## [2.0.1] - 2020-04-09

### Fixed

- Honor `force: false` instead of enabling forced bumps whenever the input is nonempty.

### Maintenance

- Add coverage for `force: false` and restrict integration CI to the master branch.

## [2.0.0] - 2020-04-01

### Changed

- Derive archive URLs from the formula and release tag, and default `tag` and `revision` to the workflow's Git ref and SHA.
- Use the workflow actor's GitHub profile name and email for commits, with a GitHub noreply address as fallback.

### Removed

- **Breaking:** Remove the `url`, `mirror` and `sha256` inputs in favor of automatic source metadata generation.

### Fixed

- Reject empty required inputs passed by GitHub Actions.

### Documentation

- Simplify workflow examples for automatic metadata detection and clarify custom-tap names and optional tag/revision overrides.

### Maintenance

- Rewrite the action in Ruby using Homebrew's formula APIs and expand the integration test matrix.

## [1.3.0] - 2020-03-18

### Changed

- Append a link crediting the action to generated pull request descriptions.

## [1.2.0] - 2020-03-16

### Added

- Add `sha256` and `mirror` inputs for archive-based formula updates.

### Changed

- Print the bump command's arguments before executing Homebrew.

### Fixed

- Reject missing formula names, incompatible archive/Git inputs and missing `GITHUB_ACTOR` before invoking Homebrew.

## [1.1.0] - 2020-03-06

### Added

- Add a `force` input to bypass Homebrew's checks for existing pull requests.

## [1.0.0] - 2020-03-05

### Added

- Provide a Docker-based GitHub Action that opens Homebrew formula bump pull requests using a source archive URL or a Git tag and revision.
- Update Homebrew, tap custom repositories from qualified formula names and configure Git identity from the workflow actor.

### Documentation

- Add setup instructions, personal access token guidance and workflow examples for archive-based and Git-based formulae.

### Maintenance

- Establish MIT licensing and integration CI for archive and Git-revision bumps.

[Unreleased]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v10.0.2...HEAD
[1.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/releases/tag/v1.0.0
[1.1.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v1.0.0...v1.1.0
[1.2.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v1.1.0...v1.2.0
[1.3.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v1.2.0...v1.3.0
[2.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v1.3.0...v2.0.0
[2.0.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v2.0.0...v2.0.1
[3.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v2.0.1...v3.0.0
[3.0.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.0.0...v3.0.1
[3.0.2]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.0.1...v3.0.2
[3.0.3]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.0.2...v3.0.3
[3.1.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.0.3...v3.1.0
[3.1.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.1.0...v3.1.1
[3.2.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.1.1...v3.2.0
[3.3.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.2.0...v3.3.0
[3.3.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.3.0...v3.3.1
[3.4.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.3.1...v3.4.0
[3.4.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.4.0...v3.4.1
[3.5.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.4.1...v3.5.0
[3.5.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.5.0...v3.5.1
[3.6.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.5.1...v3.6.0
[3.6.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.6.0...v3.6.1
[3.7.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.6.1...v3.7.0
[3.7.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.7.0...v3.7.1
[3.7.2]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.7.1...v3.7.2
[3.8.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.7.2...v3.8.0
[3.8.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.8.0...v3.8.1
[3.8.2]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.8.1...v3.8.2
[3.8.3]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.8.2...v3.8.3
[3.9.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.8.3...v3.9.0
[3.10.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.9.0...v3.10.0
[3.10.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.10.0...v3.10.1
[3.11.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.10.1...v3.11.0
[7.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v3.11.0...v7.0.0
[7.0.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v7.0.0...v7.0.1
[7.0.2]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v7.0.1...v7.0.2
[7.0.3]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v7.0.2...v7.0.3
[8.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v7.0.3...v8.0.0
[10.0.0]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v8.0.0...v10.0.0
[10.0.1]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v10.0.0...v10.0.1
[10.0.2]: https://github.com/kitschpatrol/github-action-homebrew-bump-formula/compare/v10.0.1...v10.0.2
