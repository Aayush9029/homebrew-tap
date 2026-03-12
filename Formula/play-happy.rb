class PlayHappy < Formula
  desc "Celebrate wins with random meme videos and text overlays"
  homepage "https://github.com/Aayush9029/play-happy"
  url "https://github.com/Aayush9029/play-happy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b59a103f2d9889bee6aaabb188bf1b5d2f7780e8364d6c757476a5cc32d28fbd"
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
