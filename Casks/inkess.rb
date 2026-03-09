cask "inkess" do
  version "2.7.1"

  on_arm do
    sha256 "b141f812ca4ea4f592e170b0461dbeda45b336511797cebb8de0c1a91b429709"
    url "https://download.starapp.net/Inkess-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "1e313f92418b0349e233503b6e0c0ea33c867473bf2438508510b8840e89be76"
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
