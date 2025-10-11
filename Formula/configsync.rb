class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  url "https://github.com/dotbrains/configsync/releases/download/v1.0.6/configsync-v1.0.6-darwin-universal.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
