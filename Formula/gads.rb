class Gads < Formula
  desc "Safely query, report on, and change Google Ads accounts"
  homepage "https://github.com/Aayush9029/gads"
  url "https://github.com/Aayush9029/gads/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6960f3ba011858cf883571a3cc5a11046107743c50f6ebae270ee659da320f3f"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gads --version")

    output = shell_output(
      "#{bin}/gads campaign pause --customer 123-456-7890 " \
      "--resource-name customers/1234567890/campaigns/321 --output json",
    )
    assert_match '"schema": "gads.mutation-plan/v1"', output
    assert_match '"status": "PAUSED"', output
  end
end
