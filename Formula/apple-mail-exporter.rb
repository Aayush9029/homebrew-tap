class AppleMailExporter < Formula
  include Language::Python::Virtualenv

  desc "Search and export emails from Apple Mail's local database by keyword"
  homepage "https://github.com/Aayush9029/apple-mail-exporter"
  url "https://github.com/Aayush9029/apple-mail-exporter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
