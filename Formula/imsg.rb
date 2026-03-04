class Imsg < Formula
  desc "Human-first Messages.app CLI with contact-aware chat output"
  homepage "https://github.com/Aayush9029/imsg"
  url "https://github.com/Aayush9029/imsg/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "042490026e1ab6ba97276141bfe3d0f3492d6d82d40f1824acb84e33c44ca860"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/imsg"
    resource_bundle = Dir[".build/**/PhoneNumberKit_PhoneNumberKit.bundle"].first
    bin.install resource_bundle if resource_bundle
    generate_completions_from_executable(bin/"imsg", "--generate-completion-script", shell_parameter_format: :none)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imsg --version")
  end
end
