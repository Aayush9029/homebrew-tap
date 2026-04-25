class Funnelr < Formula
  desc "Expose local web servers with Tailscale Funnel"
  homepage "https://github.com/Aayush9029/funnelr"
  url "https://github.com/Aayush9029/funnelr/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "7db460faed7a69675e591e2a6d8e9fdcc6aa79acb676b23cd668fe5b325f555e"
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
