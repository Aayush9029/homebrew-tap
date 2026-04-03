class Wiki < Formula
  desc "Search and read Wikipedia from your terminal"
  homepage "https://github.com/Aayush9029/wiki"
  url "https://github.com/Aayush9029/wiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "50f674debc85e08c5a576fc26a8a850b7f3bd12b604d832c06bc5417f6db81ac"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/Aayush9029/wiki/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiki --version")
  end
end
