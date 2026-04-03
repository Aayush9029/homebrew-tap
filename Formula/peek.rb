class Peek < Formula
  desc "Describe images and videos from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "5915634b2690287900527061df0f0f5c5e9aa86f6ba70b6c94d7e37ba0f8e3c4"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
