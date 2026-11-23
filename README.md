# Homebrew tap for Plum

```sh
brew install --cask yeshyungseok/tap/plum
```

[Plum](https://github.com/YESHYUNGSEOK/plum) runs AI coding agents side by side, each in its own git worktree. Apple Silicon, macOS 14 or later.

Plum isn't notarized yet, so the cask removes the quarantine flag Homebrew sets on the app; otherwise macOS would block its first launch. After that, Plum updates itself: each release's zip is checked against an Ed25519 signature published with it.
