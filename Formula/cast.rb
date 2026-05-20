class Cast < Formula
  desc "Cast video files from your Mac to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c8213410935db72d7cc2e48017dfb6fdea75ee83a3c3cfa1796f69da6f918ab3"

  depends_on "go" => :build
  depends_on "yt-dlp" => :recommended
  depends_on "ffmpeg" => :recommended

  def install
    system "go", "build", *std_go_args(output: bin/"cast")
  end

  test do
    assert_match "cast - stream", shell_output("#{bin}/cast --help")
  end
end
