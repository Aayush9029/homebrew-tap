cask "tack" do
  version "1.1.0"
  sha256 "a0e550a8baff5dd7a7a5a41dde0cb99c753fe520ea2759bd885fa2c5ef1738db"

  url "https://github.com/Aayush9029/Tack/releases/download/v#{version}/Tack-#{version}.dmg"
  name "Tack"
  desc "High-performance sticky notes"
  homepage "https://github.com/Aayush9029/Tack"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tack.app"

  zap trash: "~/Library/Preferences/ca.optimalapps.tack.plist"
end
