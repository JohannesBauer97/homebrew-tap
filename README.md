# FastProxy Homebrew Tap

Homebrew Cask for [FastProxy](https://github.com/JohannesBauer97/fastproxy), a
native macOS menu bar forward proxy with Kerberos upstream authentication.

## Install

```bash
brew install --cask JohannesBauer97/tap/fastproxy
```

This installs `FastProxy.app` into `/Applications` and links the bundled
`fastproxy-cli` into Homebrew's `bin` directory.

FastProxy requires macOS 13 or later and Apple Silicon.

## Upgrade

```bash
brew upgrade --cask fastproxy
```

## Uninstall

```bash
brew uninstall --cask fastproxy
```

Remove configuration and logs as well:

```bash
brew uninstall --zap --cask fastproxy
```
