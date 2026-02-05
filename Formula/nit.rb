class Nit < Formula
  desc "Browse tweets from the terminal via Nitter instances"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/releases/download/v0.1.0/nit-0.1.0-universal-macos.tar.gz"
  sha256 "5285bb5e758fbf75e173707c074241dbbf7b7286340ace7e52e896041a0c24fc"
  license "MIT"
  depends_on :macos

  def install
    bin.install "nit"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/nit --help")
  end
end
