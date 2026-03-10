class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.8/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "7e3aa9c286d45fa8f0e8c1f002f10038ac282f62dfc368856ac141c5f39f9132"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.8/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "84cd6ee884a2fe5227a01ccf624ff8cf20bebdbd7d9fa6352d718ccc6a68a73f"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.8/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9e90f8ab3250b8b8120a7a25b618549799535b8fa8cffc604807eeffe67bad5"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
