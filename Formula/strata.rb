class Strata < Formula
  desc "Translate missing Xcode string catalog entries with app-aware context"
  homepage "https://github.com/Aayush9029/strata"
  url "https://github.com/Aayush9029/strata/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "cd41027ad5723fb9f75294c35535c5061067f54508b36cf957d116e8fe14046d"
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
