class Wiki < Formula
  desc "Search and read Wikipedia from your terminal"
  homepage "https://github.com/Aayush9029/wiki"
  url "https://github.com/Aayush9029/wiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cee9ca0558bcd8761317143b59b9253709e944576b664df455855095244deb3a"
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
