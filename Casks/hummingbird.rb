cask "hummingbird" do
  version "0.1.20"
  sha256 "7a41b2c8843493669dce0b656ad04def23062fb41b147b6689ebf9ec6d0bf891"

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
