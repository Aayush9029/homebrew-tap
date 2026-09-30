cask "ghostme" do
  version "1.3.4"
  sha256 "0c54b338d30155309bffd741bb59b305df096d57d7a45cecd01c7f69d3f049b3"

  url "https://github.com/Aayush9029/ghostme-releases/releases/download/v#{version}/GhostMe.dmg"
  name "GhostMe"
  desc "Location simulator for iPhone development devices"
  homepage "https://github.com/Aayush9029/ghostme-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "GhostMe.app"

  zap trash: "~/Library/Preferences/ca.optimalapps.ghostme.plist"
end
