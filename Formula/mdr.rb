class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "70047114d32773df7e812f1dffcb27f9791f981d2c16ac80eee5a49ad35791a4"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "21ab70bb505306ce12ef7f4871c88d5eaa14785c64a4c1b81ad0b5671c18c944"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d2c157f960024acc464a4fc11ff20d3f6793119a5fa6df08d969b55bef81ecc5"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
