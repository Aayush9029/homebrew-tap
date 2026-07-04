class Netscanner < Formula
  desc "Find open ports on your local network without nmap"
  homepage "https://github.com/Aayush9029/netscanner-tool"
  url "https://github.com/Aayush9029/netscanner-tool/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "b9cfb49630a4debba5b0df9e4d2bb9465fa17d235fe5aa7cbb8307bc550abf49"
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
