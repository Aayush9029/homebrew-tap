class Cast < Formula
  desc "Stream a video file to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "230ec4c78d9a7fe06ced07f50b3b84740c5f7d3888afec452664033b5930c27c"
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
