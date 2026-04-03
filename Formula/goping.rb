class Goping < Formula
  desc "Ping with live stats — like ping but with a persistent stats bar"
  homepage "https://github.com/Aayush9029/goping"
  url "https://github.com/Aayush9029/goping/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "32697acfc4e5d1f7f23627144092a5c54760829d174df2bcfe5d9e519fd8438c"
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
