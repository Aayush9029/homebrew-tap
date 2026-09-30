cask "ringlight" do
  version "1.0.1"
  sha256 "24a4990486c282bf63c4866a8bb67a104aa230a5641920c98854b9fb5fd7659d"

  url "https://github.com/Aayush9029/RingLight/releases/download/v#{version}/RingLight-#{version}.dmg"
  name "RingLight"
  desc "Menu bar ring light overlay for the screen"
  homepage "https://github.com/Aayush9029/RingLight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "RingLight.app"

  zap trash: "~/Library/Preferences/com.pokharelaayush.RingLight.plist"
end
