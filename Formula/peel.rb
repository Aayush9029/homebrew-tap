class Peel < Formula
  desc "Remove image backgrounds in the terminal with BiRefNet"
  homepage "https://github.com/Aayush9029/peel"
  url "https://github.com/Aayush9029/peel/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5b36776d3aa71388042ff0777538d6df69c03bc35e48a673159c433f0d961b30"
  license "MIT"

  depends_on "go" => :build
  depends_on "onnxruntime"
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peel --version")
  end
end
