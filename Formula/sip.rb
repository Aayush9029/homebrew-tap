class Sip < Formula
  desc "Summarize stdin using LLMs"
  homepage "https://github.com/Aayush9029/sip"
  url "https://github.com/Aayush9029/sip/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b0fc3d58b168b0a88940caddeea77b30ec046c5a4aebe7c3d2a8628947626b52"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/sip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sip --version")
  end
end
