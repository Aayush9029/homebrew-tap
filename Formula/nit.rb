class Nit < Formula
  desc "Browse tweets from the terminal via Nitter instances"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/releases/download/v0.1.0/nit-0.1.0-universal-macos.tar.gz"
  sha256 "6555b07aa4fa38d5848760d8df95f794050861580601f7504f20a0835eab8daf"
  license "MIT"
  depends_on :macos

  def install
    bin.install "nit"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/nit --help")
  end
end
