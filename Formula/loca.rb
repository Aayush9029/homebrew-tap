class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.0/loca-0.1.0-universal-macos.tar.gz"
  sha256 "fbb7fcb6f6145513663c06576257cd37ffd19e438fa69c528a34d1bf08c0b186"
  license "MIT"
  depends_on :macos

  def install
    bin.install "loca"
  end

  test do
    assert_match "loca", shell_output("#{bin}/loca --version")
  end
end
