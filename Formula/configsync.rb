class Configsync < Formula
  desc "Synchronize macOS application configurations across machines"
  homepage "https://github.com/dotbrains/configsync"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dotbrains/configsync/releases/download/v1.0.0/configsync-v1.0.0-darwin-amd64.tar.gz"
      sha256 "ff361bd9156d8d922fe9963c9b4d8efc6d602042861eb218bc8193087afed86b"
    elsif Hardware::CPU.arm?
      url "https://github.com/dotbrains/configsync/releases/download/v1.0.0/configsync-v1.0.0-darwin-arm64.tar.gz"
      sha256 "69bc5d100c86001c8bc4e1856ea0a48a45ca84b48c601d7dc4f6d14996dc4ab5"
    end
  end

  def install
    bin.install "configsync-darwin-amd64" => "configsync" if Hardware::CPU.intel?
    bin.install "configsync-darwin-arm64" => "configsync" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/configsync", "--version"
    system "#{bin}/configsync", "--help"
  end
end