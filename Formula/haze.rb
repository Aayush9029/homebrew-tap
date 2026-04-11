class Haze < Formula
  desc "Progressive blur, grain, and gradient color overlay for video"
  homepage "https://github.com/Aayush9029/haze"
  url "https://github.com/Aayush9029/haze/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "17ba566cde89d4e21f8f2251f5048e0a57cdad199e313fef9b6a55bb59dc974f"
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
