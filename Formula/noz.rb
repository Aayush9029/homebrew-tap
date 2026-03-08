class Noz < Formula
  desc "Prevent Mac from sleeping with lid closed"
  homepage "https://github.com/Aayush9029/noz"
  url "https://github.com/Aayush9029/noz/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "df25f346f0150f904c2524ba3735c355efa32d437edb80de5dbb6a25062e80b2"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/noz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/noz --version")
  end
end
