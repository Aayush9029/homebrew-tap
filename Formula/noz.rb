class Noz < Formula
  desc "Prevent Mac from sleeping with lid closed"
  homepage "https://github.com/Aayush9029/noz"
  url "https://github.com/Aayush9029/noz/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "242641bd0cd71e9570dc5aedc81947c9beae472d21bd2f5417a88a2f05ce7592"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/noz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noz --version")
  end
end
