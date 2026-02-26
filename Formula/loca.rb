class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.1/loca-0.1.1-universal-macos.tar.gz"
  sha256 "e34addccaf7c62ee5617225c8f6260be5b8e30398a0899c03303b18d15fe74c8"
  license "MIT"
  depends_on :macos

  def install
    bin.install "loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
