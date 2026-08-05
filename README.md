# homebrew-tap

Homebrew tap for [xrl](https://github.com/xrl) projects.

## Install

```sh
brew tap xrl/tap
brew install expensify-cli      # expensify CLI (formula)
brew install --cask bad-adit    # Bad Adit menu-bar app (cask)
```

## Contents

- `Formula/expensify-cli.rb` — [expensify-rs](https://github.com/xrl/expensify-rs): command-line client for the Expensify Integration Server API (Rust CLI). macOS arm64 + Linux arm64/x86_64. Installs the `expensify` binary.
- `Casks/bad-adit.rb` — [bad-adit](https://github.com/xrl/bad-adit): SSH tunnel manager with a macOS menu-bar UI. Apple Silicon.

## Maintenance — manual, post-release (CI never writes here)

After each upstream release, update the `version`, the URLs and the `sha256` values from the
published artifacts and commit. Each release asset has a sibling `.tar.gz.sha256` file:

```sh
curl -sSL https://github.com/xrl/expensify-rs/releases/download/expensify-cli-X.Y.Z/expensify-cli-X.Y.Z-aarch64-apple-darwin.tar.gz.sha256
```
