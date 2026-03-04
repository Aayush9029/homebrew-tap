class Hn < Formula
  desc "Browse Hacker News from the terminal"
  homepage "https://github.com/Aayush9029/hn"
  url "https://github.com/Aayush9029/hn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "906b398a4b27d0db72cde4db2aaeae7f86371f45fd13fd300b1c87890d0e3dd3"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/hn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hn --version")
  end
end
