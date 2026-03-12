class Doq < Formula
  desc "Query Apple developer documentation from your terminal"
  homepage "https://github.com/Aayush9029/doq"
  url "https://github.com/Aayush9029/doq/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "543fca0cf4cb1bb9471141b7693c0dcb59a19c901aa9d558ab1eae71cd54c28a"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doq --version")
  end
end
