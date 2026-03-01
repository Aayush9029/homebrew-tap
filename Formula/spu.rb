class Spu < Formula
  desc "Check and update Swift package dependencies"
  homepage "https://github.com/Aayush9029/spu"
  url "https://github.com/Aayush9029/spu/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "88c350128cc2cb6752ba9cfdaba5bad680b06fbd6f9fa4f0a39b052619f20e8e"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/spu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spu --version")
  end
end
