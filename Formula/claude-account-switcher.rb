class ClaudeAccountSwitcher < Formula
  desc "Switch Claude Code accounts, including directory-based auto switching"
  homepage "https://github.com/Aayush9029/claude-account-switcher"
  url "https://github.com/Aayush9029/claude-account-switcher/releases/download/v0.1.0/claude-account-switcher-0.1.0.tar.gz"
  sha256 "8bc2e1d4e5e6810d24af866e3f6411087f223dd2ea5a0a261e35fa1bd55dd5ff"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    inreplace "bin/ccswitch", "#!/usr/bin/env bash", "#!#{Formula[\"bash\"].opt_bin}/bash"
    bin.install "bin/ccswitch" => "ccswitch"
  end

  test do
    assert_match "Multi-Account Switcher for Claude Code", shell_output("#{bin}/ccswitch --help")
  end
end
