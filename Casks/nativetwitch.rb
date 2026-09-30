cask "nativetwitch" do
  version "4.0.3"
  sha256 "6b08cdf72d2c73669aafa59018bbbfb9aec4f4dcd63b22ab427c3c2d71c3bed3"

  url "https://github.com/Aayush9029/NativeTwitch/releases/download/v#{version}/NativeTwitch-#{version}.dmg"
  name "NativeTwitch"
  desc "Native Twitch player"
  homepage "https://github.com/Aayush9029/NativeTwitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NativeTwitch.app"

  zap trash: [
    "~/Library/Containers/com.aayush.opensource.NativeTwitch",
    "~/Library/Preferences/com.aayush.opensource.NativeTwitch.plist",
  ]
end
