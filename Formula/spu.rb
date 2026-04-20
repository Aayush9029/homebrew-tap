class Spu < Formula
  desc "Check and update Swift package dependencies"
  homepage "https://github.com/Aayush9029/spu"
  url "https://github.com/Aayush9029/spu/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "fa0b3ce61ef1112076c50dc472d26bdbcba599ed523cbe03bcd82b642d39badc"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/spu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spu --version")
  end
end
