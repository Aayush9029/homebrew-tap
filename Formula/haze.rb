class Haze < Formula
  desc "Progressive blur, grain, and gradient color overlay for video"
  homepage "https://github.com/Aayush9029/haze"
  url "https://github.com/Aayush9029/haze/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2b2a8ca9bd134c0a69eb2b17802d34f61bd915d7b4212a700716db9d566e1c3b"
  license "MIT"
  depends_on "ffmpeg"
  depends_on :macos

  def install
    bin.install "bin/haze"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/haze --version")
  end
end
