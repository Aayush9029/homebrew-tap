class Swearjar < Formula
  desc "Terminal swear jar for coding agent transcripts"
  homepage "https://github.com/Aayush9029/swearjar"
  url "https://github.com/Aayush9029/swearjar/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b86aef8e970b2af947584d456c2cc5d5fcdec62d8a7729385d7188c65dd1cd7f"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swearjar --version")

    (testpath/"chat.txt").write("what the fuck\n")
    output = shell_output("#{bin}/swearjar scan #{testpath}/chat.txt --json")
    assert_match '"swears": 1', output
  end
end
