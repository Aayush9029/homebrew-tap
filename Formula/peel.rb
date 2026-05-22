class Peel < Formula
  desc "Remove image backgrounds in the terminal with BiRefNet"
  homepage "https://github.com/Aayush9029/peel"
  url "https://github.com/Aayush9029/peel/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bfb65632979b7bcdcc5d4dbc3167f48c7334d82a9951052ebbf19a07f0fa47ab"
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
