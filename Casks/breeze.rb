cask "breeze" do
  version "1.1.4"
  sha256 "34e309410b20f40bb154a720cdc949304cb634ad938efec5b203b83cb441e604"

  url "https://github.com/Aayush9029/breeze-releases/releases/download/v#{version}/Breeze.dmg"
  name "Breeze"
  desc "Fan control in the menu bar"
  homepage "https://breezemac.com/"

  livecheck do
    url "https://github.com/Aayush9029/breeze-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Breeze.app"

  zap trash: "~/Library/Preferences/art.aayush.Breeze.plist"
end
