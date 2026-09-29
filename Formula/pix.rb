class Pix < Formula
  desc "OpenAI image generation for the terminal — streaming, parallel, stdin-friendly"
  homepage "https://github.com/Aayush9029/pix"
  url "https://github.com/Aayush9029/pix/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "9619bb964ffc6687346b80164dee6c8469d2441f223382d63af736c19280eb33"
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
