class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.0/loca-0.1.0-universal-macos.tar.gz"
  sha256 "d204fe496874799d06f35661c8f2e422138516d4c0935b2dec02868ff6a4daad"
  license "MIT"
  depends_on :macos

  def install
    bin.install "loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
