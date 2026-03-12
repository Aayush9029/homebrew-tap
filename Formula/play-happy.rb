class PlayHappy < Formula
  desc "Celebrate wins with random meme videos and text overlays"
  homepage "https://github.com/Aayush9029/play-happy"
  url "https://github.com/Aayush9029/play-happy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ad702afc85f9b029e970d135cfdad0af858d10d0c342c3d7d82735c168680798"
  depends_on :macos
  depends_on "mpv"

  def install
    bin.install "bin/play-happy"
    (share/"play-happy/media").install Dir["media/*.mp4"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/play-happy --version")
  end
end
