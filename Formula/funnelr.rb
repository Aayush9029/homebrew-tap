class Funnelr < Formula
  desc "Expose local web servers with Tailscale Funnel"
  homepage "https://github.com/Aayush9029/funnelr"
  url "https://github.com/Aayush9029/funnelr/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "e011f17ccb4847b7ca3963d49b89f00939917e2ba14ca954d11a30b3bd7e787d"
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
