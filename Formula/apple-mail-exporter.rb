class AppleMailExporter < Formula
  desc "Search and export emails from Apple Mail's local database"
  homepage "https://github.com/Aayush9029/apple-mail-exporter"
  url "https://github.com/Aayush9029/apple-mail-exporter/releases/download/v0.2.0/apple-mail-exporter-0.2.0-macos-universal.tar.gz"
  sha256 "5f4ee47584a4c88aeabbf5a89c3dca8ab5864d3abfd3628a0e0d7f0060a42ca4"
  license "MIT"
  depends_on :macos

  def install
    bin.install "apple-mail-exporter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-mail-exporter --version")
  end
end
