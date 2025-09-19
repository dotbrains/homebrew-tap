class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.2/configsync-v1.0.2-darwin-universal.tar.gz"
  sha256 "c3a5a56ee88bb4d7045a26f568325e17d76869bee21f2c1616bd5c4ee8616840"
  license "MIT"
  version "1.0.2"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
