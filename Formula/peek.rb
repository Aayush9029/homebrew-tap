class Peek < Formula
  desc "Describe images from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "62f201f7fa1b723abe92991e60981085fd817b6fff7c495a251be3d716cc3d4e"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
