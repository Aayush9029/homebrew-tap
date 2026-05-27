class Bump < Formula
  desc "Bump Xcode project marketing version"
  homepage "https://github.com/Aayush9029/bump"
  url "https://github.com/Aayush9029/bump/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "97ec2b57fe0f99789ebb732d6620a6ea2512ef471eb83f63499cd332414ae4d8"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/bump"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump --version")
  end
end
