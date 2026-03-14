class Doq < Formula
  desc "Query Apple developer documentation from your terminal"
  homepage "https://github.com/Aayush9029/doq"
  url "https://github.com/Aayush9029/doq/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c715eb73cf36f647de50375d1c150be4de95750f557c718ea5ec5c33a71c3841"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doq --version")
  end
end
