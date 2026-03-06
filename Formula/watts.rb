class Watts < Formula
  desc "Background battery and power logger for macOS"
  homepage "https://github.com/Aayush9029/watts"
  url "https://github.com/Aayush9029/watts/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1c4c40c6890572894b3ce24df4bcbded7df8aa685d989f8241d331d15a671899"
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
