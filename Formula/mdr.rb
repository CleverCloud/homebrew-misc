class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.1/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "68a7bc2b7172da53dc61d7b81ce85289d0d32e6c89ef9c8901bdd44551aa41fe"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.1/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "ff078dd861d5242d58824ebd83f3f974e565cb7ccaeeae873dadeee07e09d987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.1/mdr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c79800d59f29bb847fa5000c859a6260561cdc0767d10d5796840c9931439d94"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.1/mdr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e11751ac0be740c15868ea8ea6b0d849489606cf0a8f38fb6dfd0c9bcad2f95a"
    end
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
