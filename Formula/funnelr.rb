class Funnelr < Formula
  desc "Expose local web servers with Tailscale Funnel"
  homepage "https://github.com/Aayush9029/funnelr"
  url "https://github.com/Aayush9029/funnelr/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "90df881c224d74f4747401cd2dbe2c1972980b5a94c7ead2cb01d2ce62a14fd4"
  license "MIT"

  depends_on "go" => :build
  depends_on "tailscale"
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelr --version")
  end
end
