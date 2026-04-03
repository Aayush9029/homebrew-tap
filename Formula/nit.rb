class Nit < Formula
  desc "Personal Twitter feed reader for the terminal"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "595db18bf33f08788f1b4720859cfdb4cf73bbac4cecab2392ba0c2279f7cd95"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/nit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nit --version")
  end
end
