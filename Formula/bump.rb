class Bump < Formula
  desc "Bump Xcode project marketing version"
  homepage "https://github.com/Aayush9029/bump"
  url "https://github.com/Aayush9029/bump/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8c411d6f4955c300c106303ba34a41316beb8cbb1d8834908ed2f2856ceca834"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/bump"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump --version")
  end
end
