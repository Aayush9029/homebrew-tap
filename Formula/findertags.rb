class Findertags < Formula
  desc "Read and modify Finder tags from the command line"
  homepage "https://github.com/Aayush9029/findertags"
  url "https://github.com/Aayush9029/findertags/releases/download/v0.1.0/findertags-0.1.0-universal-macos.tar.gz"
  sha256 "2e1eca01820293b41e70b74325d349ed3af1adcf422375adbac2078241519802"
  license "MIT"
  depends_on :macos

  def install
    bin.install "findertags"
  end

  test do
    assert_match "findertags", shell_output("#{bin}/findertags --version")
  end
end
