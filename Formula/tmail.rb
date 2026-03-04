class Tmail < Formula
  desc "Disposable email in your terminal"
  homepage "https://github.com/Aayush9029/tmail"
  url "https://github.com/Aayush9029/tmail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9d58ebef7ccbdcb927785169883e840bb818548259cc626a18098b140667e0d8"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmail --version")
  end
end
