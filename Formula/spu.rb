class Spu < Formula
  desc "Check and update Swift package dependencies"
  homepage "https://github.com/Aayush9029/spu"
  url "https://github.com/Aayush9029/spu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "991be8ecf5a30283047d9180da07a0979772f91a4c721be730bdf3209983b732"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/spu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spu --version")
  end
end
