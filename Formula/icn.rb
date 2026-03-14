class Icn < Formula
  desc "Generate .icon files from SF Symbols for Apple platforms"
  homepage "https://github.com/Aayush9029/icn"
  url "https://github.com/Aayush9029/icn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f2dd59647f761e924b9bd8303bd942c9e9920ad40a24943e1bb448d798fcfa42"
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
