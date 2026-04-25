class Funnelr < Formula
  desc "Expose local web servers with Tailscale Funnel"
  homepage "https://github.com/Aayush9029/funnelr"
  url "https://github.com/Aayush9029/funnelr/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "7b1a9c2dad9655ff89ad26495e46d38c9a3730b590867f29cd494b53f4513064"
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
