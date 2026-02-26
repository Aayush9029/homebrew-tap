class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.0/loca-0.1.0-universal-macos.tar.gz"
  sha256 "5d7fb7c7b08fc882d3b26248d30ff3ce39055da1819cd50c29537ca035e56864"
  license "MIT"
  depends_on :macos

  def install
    libexec.install "Loca.app"
    (bin/"loca").write_exec_script libexec/"Loca.app/Contents/MacOS/loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
