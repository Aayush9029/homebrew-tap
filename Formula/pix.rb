class Pix < Formula
  desc "OpenAI image generation for the terminal — streaming, parallel, stdin-friendly"
  homepage "https://github.com/Aayush9029/pix"
  url "https://github.com/Aayush9029/pix/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ed9550164a90b1d2a242e536df3a0e5b8819d59107415825ce4a1e0305321097"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pix --version")
  end
end
