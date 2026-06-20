class Swearjar < Formula
  desc "Terminal swear jar for coding agent transcripts"
  homepage "https://github.com/Aayush9029/swearjar"
  url "https://github.com/Aayush9029/swearjar/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3bdf167862362298b9d44c8a00ed335851d79e98cb0e6c519edcdd67731b42cc"
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
