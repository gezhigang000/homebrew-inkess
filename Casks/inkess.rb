cask "inkess" do
  version "2.7.0"
  sha256 "ebf0e09714d6df829b51b66db2247bdcdd755eb7fc96ebc92676d7a0138733f7"

  url "https://download.starapp.net/Inkess-macOS-arm64.dmg"
  name "Inkess"
  desc "Markdown Reader & Editor with AI Assistant"
  homepage "https://github.com/gezhigang000/inkess-app"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Inkess.app"

  zap trash: [
    "~/.local/share/inkess",
    "~/Library/Preferences/com.inkess.app.plist",
    "~/Library/Saved Application State/com.inkess.app.savedState",
  ]
end
