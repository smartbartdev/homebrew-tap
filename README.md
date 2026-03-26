# homebrew-tap

Homebrew tap for `smartbartdev` tools.

## Install

```bash
brew tap smartbartdev/tap
brew install ipb
```

## Formulae

- `ipb` - Incremental iCloud Photos backup CLI for macOS

## Maintainer workflow

To bump `ipb` for a new tag:

1. Get release tarball SHA256 from GitHub source archive.
2. Update formula URL and SHA in one command:

```bash
./scripts/bump_ipb_formula.py --version 0.1.1 --sha256 <sha256>
```

3. Validate and publish:

```bash
brew untap smartbartdev/tap
brew tap smartbartdev/tap
brew reinstall --build-from-source smartbartdev/tap/ipb
brew test smartbartdev/tap/ipb
git add Formula/ipb.rb
git commit -m "Bump ipb formula to v0.1.1"
git push
```
