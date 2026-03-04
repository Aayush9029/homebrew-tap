class Hn < Formula
  desc "Browse Hacker News from the terminal"
  homepage "https://github.com/Aayush9029/hn"
  url "https://github.com/Aayush9029/hn/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9251b43edc93ead8d9fa879e6b9e97b22fe00c18ce2c23c7f551378894eda0b7"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/hn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hn --version")
  end
end
