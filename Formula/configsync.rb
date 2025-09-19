class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.3/configsync-v1.0.3-darwin-universal.tar.gz"
  sha256 "50e9a88189a784111d15bca1e032784355798ab60d8ae7621f994cb3cb2cf850"
  license "MIT"
  version "1.0.3"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
