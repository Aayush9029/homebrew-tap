class Peek < Formula
  desc "Describe images from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e54ef3d04a23177378bae343d9418d8e44c456835c8d461a3ef630cb5bd2d0ea"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
