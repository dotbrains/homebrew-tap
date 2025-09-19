class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.0/configsync-v1.0.0-darwin-universal.tar.gz"
  sha256 "3c9f18cd84e1a53af0481545426bf747fb7cd2f3113818fccf28f4f28709f2cd"
  license "MIT"
  version "1.0.0"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
