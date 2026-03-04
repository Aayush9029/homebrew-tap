class Hn < Formula
  desc "Browse Hacker News from the terminal"
  homepage "https://github.com/Aayush9029/hn"
  url "https://github.com/Aayush9029/hn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d931a2e722cd94cb1569cf03ceef42bf2e74de2b77403261e49490139fc5ca0d"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/hn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hn --version")
  end
end
