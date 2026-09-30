cask "peeri" do
  version "1.1.1"
  sha256 "dfadb9d4f4b7c79333f0824b1052d3b034a2a27991ed16bbc8af6c61d7ae2f01"

  url "https://github.com/Aayush9029/Peeri/releases/download/v#{version}/Peeri-#{version}.dmg"
  name "Peeri"
  desc "Native torrent client"
  homepage "https://github.com/Aayush9029/Peeri"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Peeri.app"

  zap trash: "~/Library/Preferences/com.aayush.opensource.Peeri.plist"
end
