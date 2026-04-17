class Pix < Formula
  desc "OpenAI image generation for the terminal — streaming, parallel, stdin-friendly"
  homepage "https://github.com/Aayush9029/pix"
  url "https://github.com/Aayush9029/pix/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "26b343d502a7b10547bf1cbdf1c7f5b7de2007b5ac7c48458ba757896e4047a8"
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
