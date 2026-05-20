class Cast < Formula
  desc "Stream a video file to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "130836f6547be81e0d3cc1d0375df3eccb4fc8b6122965da941b63991e1b3399"
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
