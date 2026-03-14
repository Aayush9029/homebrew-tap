class Icn < Formula
  desc "Generate .icon files from SF Symbols for Apple platforms"
  homepage "https://github.com/Aayush9029/icn"
  url "https://github.com/Aayush9029/icn/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2d18ea5561fbbfc7482f96101814f6e23fb03afe6275bd6b2ad1db091a75bd17"
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
