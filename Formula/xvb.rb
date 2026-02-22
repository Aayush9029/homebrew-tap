class Xvb < Formula
  desc "Bump Xcode project marketing version"
  homepage "https://github.com/Aayush9029/xvb"
  url "https://github.com/Aayush9029/xvb/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d92007af0ef4b9f85ccf999d8549d96379b181a2d74e7ffe2843e8b92f5d0916"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/xvb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xvb --version")
  end
end
