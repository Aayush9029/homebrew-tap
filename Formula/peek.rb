class Peek < Formula
  desc "Describe images from the terminal using vision LLMs"
  homepage "https://github.com/Aayush9029/peek"
  url "https://github.com/Aayush9029/peek/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9581dda97a081cfdf9870535ac6993ad6369850fc72d9a623a17d391df18bd0e"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
