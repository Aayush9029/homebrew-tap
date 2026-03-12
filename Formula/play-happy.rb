class PlayHappy < Formula
  desc "Celebrate wins with random meme videos and text overlays"
  homepage "https://github.com/Aayush9029/play-happy"
  url "https://github.com/Aayush9029/play-happy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ad21e166c9df00c2056c7cd13b2511d2acd0a142b3257b9bdd990d6e70aee121"
  license "MIT"
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
