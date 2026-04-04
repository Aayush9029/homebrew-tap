class Meow < Formula
  desc "Upload files to catbox.moe & litterbox from the terminal"
  homepage "https://github.com/Aayush9029/meow"
  url "https://github.com/Aayush9029/meow/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ed02280b2435ac756a4013b4207e0a4f9ff54692a8a2e8d9494b8f2840899c24"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meow --version")
  end
end
