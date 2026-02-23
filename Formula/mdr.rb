class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.6/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "7ddd0b9cd89934ec20ec9e6a37711f393d709d826a2366eb1c4dff9ed4138be6"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.6/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "15daa19840a5e136de452b60b14da8d7236b6312adbf27d27dc70d03ddf9804d"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.6/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9d74b7613ee192b0745743e685dbf7d07870c3651db450ed9ff8ecf6e1d82082"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
