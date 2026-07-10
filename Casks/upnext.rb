cask "upnext" do
  version "1.0.0"
  sha256 "f339eb56848ca3ff2d29a5c498e18122fc85e218a11d66c46f964fe30675ec3a"

  url "https://github.com/srichand/UpNext/releases/download/v#{version}/UpNext-#{version}.zip"
  name "UpNext"
  desc "Shows the next calendar meeting in the menu bar"
  homepage "https://github.com/srichand/UpNext"

  auto_updates true
  depends_on macos: :sonoma

  app "UpNext.app"

  uninstall quit: "com.srichand.UpNext"

  zap trash: [
    "~/Library/Caches/com.srichand.UpNext",
    "~/Library/Preferences/com.srichand.UpNext.plist",
    "~/Library/Saved Application State/com.srichand.UpNext.savedState",
  ]
end
