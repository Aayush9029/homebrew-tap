class Aads < Formula
  desc "Manage Apple Ads campaigns from the terminal"
  homepage "https://github.com/Aayush9029/aads"
  url "https://github.com/Aayush9029/aads/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "be2d049cfc9d7ecff7ef73d2294d783d0548dba3024a52a8db1b74c21cf174fb"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aads --version")

    output = shell_output(
      "#{bin}/aads campaigns create --org-id 123 --currency USD " \
      "--name Smoke --adam-id 123456789 --daily-budget 10.00 --countries US " \
      "--ad-channel-type SEARCH --billing-event TAPS " \
      "--supply-sources APPSTORE_SEARCH_RESULTS --dry-run",
    )
    assert_match '"path": "/campaigns"', output
    assert_match '"X-AP-Context": "[redacted]"', output
  end
end
