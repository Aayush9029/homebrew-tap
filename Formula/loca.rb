class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.0/loca-0.1.0-universal-macos.tar.gz"
  sha256 "c0e68577df5bf116350e1b5ae462c87cbc9db54dc80d7390d599839ae5540b54"
  license "MIT"
  depends_on :macos

  def install
    bin.install "loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
