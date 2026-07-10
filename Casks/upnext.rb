cask "upnext" do
  version "1.0.1"
  sha256 "5a28b8340a62581eaea5ee74d23e3749d65444b6f544346b73f3f37282189698"

  url "https://github.com/srichand/UpNext/releases/download/v#{version}/UpNext-#{version}.zip"
  name "UpNext"
  desc "Shows the next calendar meeting in the menu bar"
  homepage "https://github.com/srichand/UpNext"

  auto_updates true
  depends_on macos: :sequoia

  app "UpNext.app"

  uninstall quit: "com.srichand.UpNext"

  zap trash: [
    "~/Library/Caches/com.srichand.UpNext",
    "~/Library/Preferences/com.srichand.UpNext.plist",
    "~/Library/Saved Application State/com.srichand.UpNext.savedState",
  ]
end
