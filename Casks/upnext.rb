cask "upnext" do
  version "1.0.0"
  sha256 "bb1bc402c6d36431d39b64b35693438f52fd2f30d05a05c049e7f0cdb943beb8"

  url "https://github.com/srichand/UpNext/releases/download/v#{version}/UpNext-#{version}.zip"
  name "UpNext"
  desc "Shows the next calendar meeting in the macOS menu bar"
  homepage "https://github.com/srichand/UpNext"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "UpNext.app"

  uninstall quit: "com.srichand.UpNext"

  zap trash: [
    "~/Library/Caches/com.srichand.UpNext",
    "~/Library/Preferences/com.srichand.UpNext.plist",
    "~/Library/Saved Application State/com.srichand.UpNext.savedState",
  ]
end
