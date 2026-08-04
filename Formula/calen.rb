class Calen < Formula
  desc "Manage Apple Calendar and Reminders from the terminal"
  homepage "https://github.com/Aayush9029/calen"
  url "https://github.com/Aayush9029/calen/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c60aae8e58c6e812083b105dd21d017266b3dd1fd9a92367cd77144f43b104c0"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "bin/calen"
    generate_completions_from_executable(bin/"calen", "--generate-completion-script", shell_parameter_format: :none)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/calen --version")
  end
end
