cask "hummingbird" do
  version "0.1.11"
  sha256 "928483575f0fb8c557aa1bbd61681d5f34045f33b18473b6d78851f84dccf80b"

  url "https://github.com/robgough/homebrew-hummingbird/releases/download/v#{version}/Hummingbird-#{version}.dmg"
  name "Hummingbird"
  desc "Team of AI agents to chat with, each channel with its own computer"
  homepage "https://hummingbird-prod.fly.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/robgough/homebrew-hummingbird/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Hummingbird.app"

  zap trash: [
    "~/Library/Application Support/Hummingbird",
    "~/Library/Caches/net.robgough.hummingbird.prototype",
    "~/Library/HTTPStorages/net.robgough.hummingbird.prototype",
    "~/Library/Preferences/net.robgough.hummingbird.prototype.plist",
    "~/Library/Saved Application State/net.robgough.hummingbird.prototype.savedState",
  ]
end
