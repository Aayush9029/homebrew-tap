class Nit < Formula
  desc "Browse tweets from the terminal via X syndication"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/releases/download/v0.2.0/nit-0.2.0-universal-macos.tar.gz"
  sha256 "933d8db630bb006ee1c1d71d2388ac2241ab53a9161600d8c917cc761f5a556c"
  license "MIT"
  depends_on :macos

  def install
    bin.install "nit"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/nit --help")
  end
end
