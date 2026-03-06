class Watts < Formula
  desc "Background battery and power logger for macOS"
  homepage "https://github.com/Aayush9029/watts"
  url "https://github.com/Aayush9029/watts/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "df566584a941c84615c9d03bc867557a6751ddcd0a959f89bd01b44c991a53b9"
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
