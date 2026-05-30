class Huectl < Formula
  desc "Control Philips Hue lights from your terminal"
  homepage "https://github.com/Aayush9029/huectl"
  url "https://github.com/Aayush9029/huectl/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "9350eaeccaedf86cbf71964bd88b4644f33d89ea15bc1086fdb6d4876bf8323f"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/huectl --version")
  end
end
