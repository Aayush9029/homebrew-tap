class Haze < Formula
  desc "Progressive blur, grain, and gradient color overlay for video"
  homepage "https://github.com/Aayush9029/haze"
  url "https://github.com/Aayush9029/haze/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "fc5d4411964e2d1a35dede494a2c30d9c339b5137f533ec6694ad1ff5fa139f6"
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
