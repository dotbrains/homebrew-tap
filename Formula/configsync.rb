class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.4/configsync-v1.0.4-darwin-universal.tar.gz"
  sha256 "bdc25f0f3aeb6216a999f3968a44e1d4309e60d67e2675ee2cbb79b1fcecaf13"
  license "MIT"
  version "1.0.4"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
