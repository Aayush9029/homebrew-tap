class Nit < Formula
  desc "Personal Twitter feed reader for the terminal"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "aa892307de063914f5e281c393b05295dea1949a7735a9d183a3f94c9dd013bb"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/nit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nit --version")
  end
end
