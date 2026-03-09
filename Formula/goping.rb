class Goping < Formula
  desc "Thoughtful ping with a live TUI and better host stats"
  homepage "https://github.com/Aayush9029/goping"
  url "https://github.com/Aayush9029/goping/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8e85f43114627e3c3f6df5f2e5df7251f7fa88a82302c941c7aada08cc402dda"
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
