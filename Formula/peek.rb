class Peek < Formula
  desc "Describe images from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "5ce949c25c6454a06edb7260d386fdc5d78b4f216eef345814034543f9b8972b"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
