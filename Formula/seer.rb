class Seer < Formula
  desc "Extract text from images and PDFs using Apple Vision OCR"
  homepage "https://github.com/Aayush9029/seer"
  url "https://github.com/Aayush9029/seer/releases/download/v0.1.0/seer-0.1.0-arm64-macos.tar.gz"
  sha256 "3e765e9323a02e52146b67bc41057a93e23284b38e9dd78397128a7ddde01076"
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
