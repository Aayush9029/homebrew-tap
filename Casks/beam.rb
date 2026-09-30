cask "beam" do
  version "1.0.8"
  sha256 "596be2d7d00a1a651acc013fcb24c284bfe9baf9eeae66e3eb2f24ccbe1a9009"

  url "https://github.com/Aayush9029/beam-issues/releases/download/v#{version}/Beam-#{version}.dmg"
  name "Beam"
  desc "Remote access server for the Beam iPad app"
  homepage "https://github.com/Aayush9029/beam-issues"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "beam.app"

  zap trash: "~/Library/Preferences/com.aayush.beamapp.BeamServer.plist"
end
