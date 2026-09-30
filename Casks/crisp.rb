cask "crisp" do
  version "1.0.1"
  sha256 "72bc6f2941f4e2081571831ff30a189e02ef440ec332da4bf02f9d472532609a"

  url "https://github.com/Aayush9029/Crisp/releases/download/v#{version}/Crisp-#{version}.dmg"
  name "Crisp"
  desc "Menu bar app that fixes AirPods sound quality"
  homepage "https://github.com/Aayush9029/Crisp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Crisp.app"

  zap trash: "~/Library/Preferences/com.aayush.crisp.plist"
end
