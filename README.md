# Hummingbird for Mac

Releases of the Hummingbird Mac app, its update feed, and its Homebrew tap.

## Install

With Homebrew:

```sh
brew install --cask robgough/hummingbird/hummingbird
```

Or download the newest DMG from [Releases](../../releases/latest), open it, and drag
Hummingbird to Applications.

Hummingbird updates itself after that (Sparkle). Every update is signed, and the app
installs only one signed with its own key.

## What's here

- `Casks/hummingbird.rb`: the Homebrew cask.
- `appcast.xml`: the feed the app checks for updates.
- Releases: the notarized DMGs.

Everything here is written by `bin/release-mac --publish` in the app's own repository.
Please don't edit it by hand.
