class Strata < Formula
  desc "Translate missing Xcode string catalog entries with app-aware context"
  homepage "https://github.com/Aayush9029/strata"
  url "https://github.com/Aayush9029/strata/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "b0643073e47c3c2ed535fe7fe57927d555d79fd378b15a305e5e7a57d4cf5b8b"
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
