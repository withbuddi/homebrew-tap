# withbuddi/homebrew-tap

The Homebrew tap for [buddi](https://withbuddi.com/), a small AI team that lives on your Mac.

## Install

```sh
brew install withbuddi/tap/buddi
```

Or tap first, then install by short name:

```sh
brew tap withbuddi/tap
brew trust withbuddi/tap   # Homebrew asks you to trust third-party taps once
brew install --cask buddi
```

Upgrade with `brew upgrade buddi`.

buddi installs its own command-line tool from its menu. `brew uninstall buddi`
removes the app but keeps your data in `~/Library/Application Support/buddi`;
the app's own **Remove buddi…** is the full uninstall, or run `brew zap buddi`.

## What this tap tracks

The `buddi` cask follows the latest buddi release, pre-releases included (for
example `0.1.0-pre.43`). It installs the same signed and notarized DMG the
website serves, from the
[GitHub release](https://github.com/withbuddi/buddi/releases).

A workflow reads <https://withbuddi.com/download/mac/latest.json> every hour (and
on each release), rewrites `version` and `sha256`, runs `brew style` and
`brew audit --cask --online`, and commits `buddi <version>`.

## Homebrew's main cask

Once buddi reaches a stable 0.1.x release, we plan to submit it to
[homebrew/cask](https://github.com/Homebrew/homebrew-cask) so
`brew install --cask buddi` works without this tap. Until then, and for
pre-releases after that, use this tap.
