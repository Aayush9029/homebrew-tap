class Huectl < Formula
  desc "Control Philips Hue lights from your terminal"
  homepage "https://github.com/Aayush9029/huectl"
  url "https://github.com/Aayush9029/huectl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a79b161053dd9b35f12c1c37e27dba8c418af5128b8abd08e5ab857d5c9d8795"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/huectl --version")
  end
end
