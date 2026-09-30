cask "seedsim" do
  version "1.0.1"
  sha256 "29232780455b088838e8c2f1f02f86635aa3337a573e48c3e84c5b78607cfe7f"

  url "https://github.com/Aayush9029/SeedSim/releases/download/v#{version}/SeedSim-#{version}.dmg"
  name "SeedSim"
  desc "Simulator for SenseCAP Watcher firmware"
  homepage "https://github.com/Aayush9029/SeedSim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SeedSim.app"

  zap trash: "~/Library/Preferences/com.optimalapps.seedsim.plist"
end
