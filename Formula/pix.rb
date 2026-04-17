class Pix < Formula
  desc "OpenAI image generation for the terminal — streaming, parallel, stdin-friendly"
  homepage "https://github.com/Aayush9029/pix"
  url "https://github.com/Aayush9029/pix/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "186d07f4eb0e0e6af543d506f62799ad72b4e00f53bdb9f3c05f6bcc405ff8f9"
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
