cask "omabox" do
  version "0.1.4"
  sha256 "bb9e08effa8318c871e3cde89febd9f38ba38a0f392eabf85126b461118cafc6"

  url "https://github.com/Aayush9029/Omabox/releases/download/v#{version}/Omabox-#{version}-arm64.dmg"
  name "Omabox"
  desc "Run Omarchy in a virtual machine"
  homepage "https://github.com/Aayush9029/Omabox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Omabox.app"

  zap trash: "~/Library/Preferences/ca.optimalapps.omabox.plist"
end
