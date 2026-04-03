class Nit < Formula
  desc "Personal Twitter feed reader for the terminal"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "1374918acf30784174e43c807680c741ad8f867c81774514d164f71aa483fce3"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nit --version")
  end
end
