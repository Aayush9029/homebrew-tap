class AppleMailExporter < Formula
  include Language::Python::Virtualenv

  desc "Search and export emails from Apple Mail's local database by keyword"
  homepage "https://github.com/Aayush9029/apple-mail-exporter"
  url "https://github.com/Aayush9029/apple-mail-exporter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "46924327017c061bbd1e06697e18b2d7d6e249c4da5f7ab0f755412348151463"
  license "MIT"

  depends_on "python@3.12"
  depends_on :macos

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-mail-exporter --version")
  end
end
