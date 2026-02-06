class Noz < Formula
  desc "Prevent Mac from sleeping with lid closed"
  homepage "https://github.com/Aayush9029/noz"
  url "https://github.com/Aayush9029/noz/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "01d063ab083cd2c1d761d05e4024e3a2d72f96c824784b480f969077bee508c4"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/noz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noz --version")
  end
end
