class Funnelr < Formula
  desc "Expose local web servers with Tailscale Funnel"
  homepage "https://github.com/Aayush9029/funnelr"
  url "https://github.com/Aayush9029/funnelr/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3f3ada04f980f9c0bb189fbc995e02c327541aef59953ba6b481105ef1614619"
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
