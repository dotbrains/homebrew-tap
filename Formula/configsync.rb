class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.6/configsync-v1.0.6-darwin-universal.tar.gz"
  sha256 "5b10cb3ac0deb6cb60ff299e62017f01107a1a7fb4bdca410c5795b3212efa3d"
  license "MIT"
  version "1.0.6"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
