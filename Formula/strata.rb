class Strata < Formula
  desc "Translate missing Xcode string catalog entries with app-aware context"
  homepage "https://github.com/Aayush9029/strata"
  url "https://github.com/Aayush9029/strata/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b4fe4b6d8fb3cb3145f7bdb27793522b89dadaf18f276eeefb8e93f3a06b2e88"
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
