class Catbox < Formula
  desc "Upload files to catbox.moe from the terminal"
  homepage "https://github.com/Aayush9029/catbox"
  url "https://github.com/Aayush9029/catbox/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1c612968889bf075aebfc433064736a29327a9b6dd29b6171d9f9c40186d1580"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/catbox --version")
  end
end
