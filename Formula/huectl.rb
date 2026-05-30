class Huectl < Formula
  desc "Control Philips Hue lights from your terminal"
  homepage "https://github.com/Aayush9029/huectl"
  url "https://github.com/Aayush9029/huectl/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b4a8a40b26b775f7b330922a17e7909271718c5d1a0fd761fcfcc2bbc430b5ff"
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
