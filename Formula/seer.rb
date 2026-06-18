class Seer < Formula
  desc "Extract text from images and PDFs using Apple Vision OCR"
  homepage "https://github.com/Aayush9029/seer"
  url "https://github.com/Aayush9029/seer/releases/download/v0.1.0/seer-0.1.0-arm64-macos.tar.gz"
  sha256 "d9ac26bf1e145b30ed8bb69167de51fd00394bfe0ce9fbb46f2e28e51a7fd40b"
  license "MIT"
  depends_on macos: :sequoia
  depends_on arch: :arm64

  def install
    bin.install "seer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seer --version")
  end
end
