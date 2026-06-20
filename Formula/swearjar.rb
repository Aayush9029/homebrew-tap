class Swearjar < Formula
  desc "Terminal swear jar for coding agent transcripts"
  homepage "https://github.com/Aayush9029/swearjar"
  url "https://github.com/Aayush9029/swearjar/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "fcfa112e48ef1c2313474a96dd7c6d01218f53e5db15408b61573da3f76c4a38"
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
