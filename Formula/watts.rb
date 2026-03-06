class Watts < Formula
  desc "Background battery and power logger for macOS"
  homepage "https://github.com/Aayush9029/watts"
  url "https://github.com/Aayush9029/watts/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "61bafb18ddc00315fa23326a904e5690cd338fc34385f7fb2b5a3df059aad590"
  license "MIT"
  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/watts --version")
  end
end
