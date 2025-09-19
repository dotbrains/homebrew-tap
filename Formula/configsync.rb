class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.1/configsync-v1.0.1-darwin-universal.tar.gz"
  sha256 "f32ccad4935cfdac7d74e0d41184d552c8105c93c88086c2d6d56e015d35b209"
  license "MIT"
  version "1.0.1"

  depends_on :macos

  def install
    bin.install "configsync-darwin-universal" => "configsync"
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end
