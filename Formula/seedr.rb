class Seedr < Formula
  desc "CLI and TUI for seedr.cc cloud torrents"
  homepage "https://github.com/Aayush9029/seedr"
  url "https://github.com/Aayush9029/seedr/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "af64371e12e00579002a4e43460fdd547a065ae0f6b58c524756b9da9054ed37"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/seedr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seedr --version")
  end
end
