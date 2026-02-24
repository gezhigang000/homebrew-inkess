cask "inkess" do
  version "2.3.1"
  sha256 "PLACEHOLDER"

  url "https://github.com/gezhigang000/inkess-app/releases/download/v#{version}/Inkess_2.2.0_aarch64.dmg"
  name "Inkess"
  desc "Markdown Reader & Converter"
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
