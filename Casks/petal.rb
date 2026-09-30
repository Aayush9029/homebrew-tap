cask "petal" do
  version "2.4.3"
  sha256 "bcd4549eb084d8e506d4cd0c9e27334ee3d8742a409db04c71d22ed8f1e5dc90"

  url "https://github.com/Aayush9029/petal/releases/download/v#{version}/Petal-#{version}.dmg"
  name "Petal"
  desc "Menu bar app for local audio transcription"
  homepage "https://github.com/Aayush9029/petal"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "petal.app"

  zap trash: "~/Library/Preferences/com.optimalapps.petal.plist"
end
