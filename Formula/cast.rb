class Cast < Formula
  desc "Stream a video file to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9139ff768f25100299480d084e290a2f6ec223584d9c454f20dcf76444aa1f0a"
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
