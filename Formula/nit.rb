class Nit < Formula
  desc "Personal Twitter feed reader for the terminal"
  homepage "https://github.com/Aayush9029/nit"
  url "https://github.com/Aayush9029/nit/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "33baec37fe46b5f91f4a4092d98d4a453a08ce11bc398232c75d6186a0dfe511"
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
