cask "bolt" do
  version "0.1.1"
  sha256 "aecebf8dbfcb78e362b648e2737fea2029c1e615b1384e90bc99fc7ab170c5d5"

  url "https://github.com/Aayush9029/Bolt/releases/download/v#{version}/Bolt-#{version}.dmg"
  name "Bolt"
  desc "Battery charge limiter"
  homepage "https://github.com/Aayush9029/Bolt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Bolt.app"

  zap trash: "~/Library/Preferences/com.aayush.opensource.Bolt.plist"
end
