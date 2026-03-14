class Icn < Formula
  desc "Generate .icon files from SF Symbols for Apple platforms"
  homepage "https://github.com/Aayush9029/icn"
  url "https://github.com/Aayush9029/icn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b39480a7f3156a44d66f83a5df39b7a5e70bb7fe6e4ae7c425e1af771394ff98"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/icn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/icn --version")
  end
end
