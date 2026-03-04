class Tmail < Formula
  desc "Disposable email in your terminal"
  homepage "https://github.com/Aayush9029/tmail"
  url "https://github.com/Aayush9029/tmail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "be6a0ef50323b794409f0081203053c6a9fe2e40419d4cb1989949cdd8c950bb"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmail --version")
  end
end
