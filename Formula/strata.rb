class Strata < Formula
  desc "Translate missing Xcode string catalog entries with app-aware context"
  homepage "https://github.com/Aayush9029/strata"
  url "https://github.com/Aayush9029/strata/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a29573515c87d32034e84f9229b5b62a7779ee5eb5d17cc14c0b7cebf3e495b1"
  license "MIT"

  depends_on "go" => :build
  depends_on "ast-grep"
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
