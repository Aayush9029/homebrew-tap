class Bump < Formula
  desc "Bump Xcode project marketing version"
  homepage "https://github.com/Aayush9029/bump"
  url "https://github.com/Aayush9029/bump/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "09cb9b6332359b51ad4ca70de48449491b8d6990911935c92136d717cdf7e8e5"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/bump"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump --version")
  end
end
