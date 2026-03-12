cask "inkess" do
  version "2.8.2"

  on_arm do
    sha256 "416f4139e5bf4fac3b22dbecdcf665817777ef8e2a50e022056414f784039fbe"
    url "https://download.starapp.net/Inkess-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "ff11e1651f11d6d1050582a23cf72837a703c947cf24fc6175ad5773bed8ba2f"
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
