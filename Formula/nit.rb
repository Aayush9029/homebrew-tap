class Nit < Formula
  desc "Personal Twitter feed reader for the terminal"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "55024f576bcbb8a5f45e0db2e2c14ab5352bbb3bc27a73f0f2208d36805c5860"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/nit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nit --version")
  end
end
