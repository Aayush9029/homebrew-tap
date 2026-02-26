class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.1/loca-0.1.1-universal-macos.tar.gz"
  sha256 "a70e1922caa2d52afbb0d8315afdc57de986912a34b46ffd5b7fbd6b43528816"
  license "MIT"
  depends_on :macos

  def install
    if (buildpath/"Loca.app").directory?
      cp_r buildpath/"Loca.app", libexec
    elsif (buildpath/"Contents").directory?
      (libexec/"Loca.app").mkpath
      cp_r buildpath.children, libexec/"Loca.app"
    else
      odie "Loca.app bundle not found in release archive"
    end
    bin.install_symlink libexec/"Loca.app/Contents/MacOS/loca" => "loca"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loca --version")
  end
end
