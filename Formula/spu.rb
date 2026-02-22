class Spu < Formula
  desc "Check and update Swift package dependencies"
  homepage "https://github.com/Aayush9029/spu"
  url "https://github.com/Aayush9029/spu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7a4f337c86862453434cdafbf72a5c2fb8da46fcaaa248788a4cbf17380c89cc"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/spu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spu --version")
  end
end
