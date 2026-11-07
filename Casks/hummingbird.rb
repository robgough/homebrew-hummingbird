cask "hummingbird" do
  version "0.1.10"
  sha256 "c5cac64cd55981a2bea3b1e1f75e04f95f7522bd9ddcc7da227e73f4789f79ff"

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
