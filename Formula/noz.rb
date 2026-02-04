class Noz < Formula
  desc "Prevent Mac from sleeping with lid closed"
  homepage "https://github.com/Aayush9029/noz"
  url "https://github.com/Aayush9029/noz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d4adb56d999b9007ebd95ea3e5969c94df09103ca044b0d679e25ab75ac7b932"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/noz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noz --version")
  end
end
