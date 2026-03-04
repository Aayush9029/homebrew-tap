class Tmail < Formula
  desc "Disposable email in your terminal"
  homepage "https://github.com/Aayush9029/tmail"
  url "https://github.com/Aayush9029/tmail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "eaba2e486070585d2d655dbe7b3c68e2ee50d5cb21afe5af06be000b0d82d42c"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmail --version")
  end
end
