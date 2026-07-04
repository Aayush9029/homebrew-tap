class Cast < Formula
  desc "Stream a video file to a Samsung Smart TV"
  homepage "https://github.com/Aayush9029/cast"
  url "https://github.com/Aayush9029/cast/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "fb105ab52fee605ebc03c23c09d0d0c6afdd8a904eed84f9401b273eec425c9b"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."

    # Swift/ScreenCaptureKit helper that powers `cast window`. Built from source
    # against the macOS SDK; the package has no external SwiftPM dependencies, so
    # it builds offline in the sandbox with SwiftPM's own sandbox disabled.
    system "swift", "build", "-c", "release",
           "--package-path", "capture", "--disable-sandbox"
    bin_path = Utils.safe_popen_read(
      "swift", "build", "-c", "release",
      "--package-path", "capture", "--show-bin-path", "--disable-sandbox"
    ).chomp
    bin.install "#{bin_path}/cast-capture"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cast --version")
    assert_predicate bin/"cast-capture", :exist?
  end
end
