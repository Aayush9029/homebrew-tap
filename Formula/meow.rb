class Meow < Formula
  desc "Upload files to catbox.moe & litterbox from the terminal"
  homepage "https://github.com/Aayush9029/meow"
  url "https://github.com/Aayush9029/meow/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "39dee24bfa231de78d1275ec5969e5de49a324772917801248c005e1f8054b92"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meow --version")
  end
end
