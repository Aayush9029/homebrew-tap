class Netscanner < Formula
  desc "Find open ports on your local network without nmap"
  homepage "https://github.com/Aayush9029/netscanner-tool"
  url "https://github.com/Aayush9029/netscanner-tool/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "287fe9729bf015aa0d29c6abef2ebd6c9b156878659c275a1998f0b89eca7428"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netscanner --version")
  end
end
