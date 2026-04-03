class Goping < Formula
  desc "Ping with live stats — like ping but with a persistent stats bar"
  homepage "https://github.com/Aayush9029/goping"
  url "https://github.com/Aayush9029/goping/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5633ff4dd32a749adeba8d47cc4bc84cab9041cff2a880d7a428cbb4548c471b"
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
