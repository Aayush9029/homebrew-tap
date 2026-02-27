class Chan < Formula
  desc "Browse 4chan from the terminal"
  homepage "https://github.com/Aayush9029/chan"
  url "https://github.com/Aayush9029/chan/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"chan", "./cmd/chan/"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chan --version")
  end
end
