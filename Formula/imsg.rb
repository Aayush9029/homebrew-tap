class Imsg < Formula
  desc "CLI for Apple Messages.app — send and receive iMessages from the terminal"
  homepage "https://github.com/steipete/imsg"
  url "https://github.com/steipete/imsg/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "38a1a12d39891347378aa16b0e8717b1f91422b6dc36835feb7ad58ac3975856"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/imsg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imsg --version")
  end
end
