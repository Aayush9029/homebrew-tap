class Loca < Formula
  desc "Get your Mac's current location from the terminal"
  homepage "https://github.com/Aayush9029/loca"
  url "https://github.com/Aayush9029/loca/releases/download/v0.1.2/loca-0.1.2-universal-macos.tar.gz"
  sha256 "1cb48120ccd1257b65770036f3394617025f0befb7cf88f9a0f7ef90953f169c"
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
