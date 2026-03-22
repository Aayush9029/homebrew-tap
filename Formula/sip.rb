class Sip < Formula
  desc "Summarize stdin using LLMs"
  homepage "https://github.com/Aayush9029/sip"
  url "https://github.com/Aayush9029/sip/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a25b0510b04e2d90d5f9613d1271c5f1079d0014a5538a3215b78b149ae04727"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/sip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sip --version")
  end
end
