class Cast < Formula
  desc "Stream a video file to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7ccb48ab7aedecc2bded0e2e65a99187be8cb33d8388e446a04ad6924335e2d6"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cast --version")
  end
end
