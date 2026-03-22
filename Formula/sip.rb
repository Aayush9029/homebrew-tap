class Sip < Formula
  desc "Summarize stdin using LLMs"
  homepage "https://github.com/Aayush9029/sip"
  url "https://github.com/Aayush9029/sip/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "513f990273fe4be95972f21740dc02a5e2b5138146879f5a06d1db8a5f84bcfa"
  license "MIT"
  depends_on :macos

  def install
    bin.install "bin/sip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sip --version")
  end
end
