class Tmail < Formula
  desc "Disposable email in your terminal"
  homepage "https://github.com/Aayush9029/tmail"
  url "https://github.com/Aayush9029/tmail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f6d160327d3c4bf35a2e4883c0a5985ae7c335fb26d43e2815fd6d5d04d63931"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmail --version")
  end
end
