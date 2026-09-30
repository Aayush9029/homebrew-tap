cask "nativeyoutube" do
  version "3.2.7"
  sha256 "51ce940bc173e94d832de877f1aec080a2d93da9a986b000a1a8c3419d1fa1ad"

  url "https://github.com/Aayush9029/NativeYoutube/releases/download/v#{version}/NativeYoutube-#{version}.dmg"
  name "NativeYoutube"
  desc "Menu bar YouTube player"
  homepage "https://github.com/Aayush9029/NativeYoutube"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "NativeYoutube.app"

  zap trash: "~/Library/Preferences/com.pokharel.aayush.nativeyoutube.plist"
end
