cask "omasend" do
  version "0.2.2"
  sha256 "645874686ab17dd7f664848bebf3a3d7735eb4618e628d4c2dce1c04b71ed7e4"

  url "https://github.com/Aayush9029/OmaSend/releases/download/macos-v#{version}/OmaSend_#{version}_macOS_arm64.dmg"
  name "OmaSend"
  desc "Encrypted clipboard sharing across devices"
  homepage "https://github.com/Aayush9029/OmaSend"

  livecheck do
    url :url
    regex(/^macos[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "OmaSend.app"

  zap trash: "~/Library/Preferences/art.aayush.OmaSend.plist"
end
