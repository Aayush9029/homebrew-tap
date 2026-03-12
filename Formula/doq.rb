class Doq < Formula
  desc "Query Apple developer documentation from your terminal"
  homepage "https://github.com/Aayush9029/doq"
  url "https://github.com/Aayush9029/doq/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "568facc31ca05aecb5c1674a0d5057df42cb062dac884b073b976731d244ed3c"
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
