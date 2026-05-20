class Cast < Formula
  desc "Stream a video file from your Mac to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3edd38901b44673cc0eb1c46b8a601dc0be85203fb38eaa63a53e5b5a8c75603"
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
