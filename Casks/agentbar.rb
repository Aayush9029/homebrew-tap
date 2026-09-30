cask "agentbar" do
  version "1.0.11"
  sha256 "6bf78f243093d77f552c4778969143819ba02c39757976a480f78736e6ecc08d"

  url "https://github.com/Aayush9029/AgentBar/releases/download/v#{version}/AgentBar-#{version}.dmg"
  name "AgentBar"
  desc "Menu bar launcher and manager for AI coding sessions"
  homepage "https://github.com/Aayush9029/AgentBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "AgentBar.app"

  zap trash: "~/Library/Preferences/com.art.aayush.agentbar.plist"
end
