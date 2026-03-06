class Watts < Formula
  desc "Background battery and power logger for macOS"
  homepage "https://github.com/Aayush9029/watts"
  url "https://github.com/Aayush9029/watts/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "27b052d8651d63a6b141429c850e19ba5681fc2603a96d2303606df717f2f985"
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
