class Goping < Formula
  desc "Thoughtful ping with a live TUI and better host stats"
  homepage "https://github.com/Aayush9029/goping"
  url "https://github.com/Aayush9029/goping/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b595ceeacfe4099868f0062863494f5af4b70a8f88a7de3f62e047e116fede46"
  license "MIT"
  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/goping --version")
  end
end
