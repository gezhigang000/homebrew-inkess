cask "inkess" do
  version "2.8.4"

  on_arm do
    sha256 "c98f92cfd6fa7e5da517e0606b67b595ca6b23f2bf567b42a407eb22b1b32822"
    url "https://download.starapp.net/Inkess-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "9d0a9dc78a99be0f01e84ef2d00febd47b63ebcd57b8c09115dadf67c9ba5384"
    url "https://download.starapp.net/Inkess-macOS-x64.dmg"
  end

  name "Inkess"
  desc "Markdown Reader & Editor with AI Assistant"
  homepage "https://github.com/gezhigang000/inkess-app"

  depends_on macos: ">= :big_sur"

  app "Inkess.app"

  zap trash: [
    "~/Library/Application Support/inkess",
    "~/Library/Preferences/com.inkess.app.plist",
    "~/Library/Saved Application State/com.inkess.app.savedState",
  ]
end
