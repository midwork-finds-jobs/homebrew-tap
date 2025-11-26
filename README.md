# Homebrew Tap for midwork-finds-jobs

This is the official Homebrew tap for midwork-finds-jobs tools.

## Installation

### Install the tap

```sh
brew tap midwork-finds-jobs/tap
```

### Install tools

```sh
# Install hq - command-line HTML filter using CSS selectors
brew install midwork-finds-jobs/tap/hq

# Install hrobot - Terraform provider for Hetzner Robot API
brew install midwork-finds-jobs/tap/hrobot
```

### Or install directly

```sh
brew install midwork-finds-jobs/tap/hq
brew install midwork-finds-jobs/tap/hrobot
```

## Available Formulas

- **hq** (v0.5.1) - Command-line HTML filter using CSS selectors
- **hrobot** (v0.3.1) - Terraform provider for Hetzner Robot API

## Development

To test formulas locally:

```sh
brew install --build-from-source Formula/hq.rb
brew install --build-from-source Formula/hrobot.rb
```
