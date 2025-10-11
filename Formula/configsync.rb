class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.5/configsync-v1.0.5-darwin-universal.tar.gz"
  sha256 "35410388607b817bb8c750e8fd6062698b8fa724b1fc0016309f9853dfc9fb59"
  license "MIT"
  version "1.0.5"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
