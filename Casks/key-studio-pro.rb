cask "key-studio-pro" do
  version "1.0.2"
  sha256 "65bb09acebd7b8d8c94baa00991ca7f159bb88e22e11e0d12c395a94ae2bcf0b"

  url "https://github.com/Aayush9029/keystudiopro-releases/releases/download/v#{version}/KeyStudioPro.dmg"
  name "Key Studio Pro"
  desc "Neural green screen keyer built on CorridorKey"
  homepage "https://github.com/Aayush9029/keystudiopro-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "KeyStudioPro.app"

  zap trash: "~/Library/Preferences/ca.optimalapps.keystudiopro.plist"
end
