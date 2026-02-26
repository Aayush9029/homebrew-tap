class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.0/loca-0.1.0-universal-macos.tar.gz"
  sha256 "c03e8f9d021d62d0d470b4ec18003a31c4428e3608a753abb624f89889c073f9"
  license "MIT"
  depends_on :macos

  def install
    bin.install "loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
