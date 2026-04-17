class Pix < Formula
  desc "OpenAI image generation for the terminal — streaming, parallel, stdin-friendly"
  homepage "https://github.com/Aayush9029/pix"
  url "https://github.com/Aayush9029/pix/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "21de3a7ee1b841d00db67090ce626167b0fa4d49bfab63e19559fdf5c9263c13"
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
