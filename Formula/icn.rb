class Icn < Formula
  desc "Generate .icon files from SF Symbols for Apple platforms"
  homepage "https://github.com/Aayush9029/icn"
  url "https://github.com/Aayush9029/icn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "879bd69ef67dc5c0b4f0dc860e46e37d0db6f9c76baf98ce752624da7f5dbf70"
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
