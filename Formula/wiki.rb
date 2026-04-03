class Wiki < Formula
  desc "Search and read Wikipedia from your terminal"
  homepage "https://github.com/Aayush9029/wiki"
  url "https://github.com/Aayush9029/wiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "38a948bab23bec9e4d925a6c99b49a256c0f2a224e779bfc8736a4618558382e"
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
