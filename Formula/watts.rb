class Watts < Formula
  desc "Background battery and power logger for macOS"
  homepage "https://github.com/Aayush9029/watts"
  url "https://github.com/Aayush9029/watts/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "48e1f404383c89849462cc28e4005b955ee0e04c980bc0a48151ceb2713287cc"
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
