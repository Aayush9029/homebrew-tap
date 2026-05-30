class Huectl < Formula
  desc "Control Philips Hue lights from your terminal"
  homepage "https://github.com/Aayush9029/huectl"
  url "https://github.com/Aayush9029/huectl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e608fe5d3591da1c7f8d067efc79a24d407531fd394ad7348ea629a4f6f5070d"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/huectl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/huectl --version")
  end
end
