class Peek < Formula
  desc "Describe images from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2bfa6ac7a088d1bd0cf344136cfdc5ef203ac521d146227ee7736ab74283b835"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
