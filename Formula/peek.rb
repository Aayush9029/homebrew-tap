class Peek < Formula
  desc "Describe images and videos from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "edaea0514c557903e95ff0b3417ea111be81500cc40ad931a2c225908455a5ae"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
