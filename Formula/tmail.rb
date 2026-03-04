class Tmail < Formula
  desc "Disposable email in your terminal"
  homepage "https://github.com/Aayush9029/tmail"
  url "https://github.com/Aayush9029/tmail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "31b34ff7bdb655197adc387dd7aa2e147307e6cd4a0491ea4dac2b3e51c315cc"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmail --version")
  end
end
