class Meow < Formula
  desc "Upload files to catbox.moe & litterbox from the terminal"
  homepage "https://github.com/Aayush9029/meow"
  url "https://github.com/Aayush9029/meow/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "344cd4dd147e5ce2f693a6c9da575e7ce9176d2be8b1ec9ff0db9101b619ccd3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meow --version")
  end
end
