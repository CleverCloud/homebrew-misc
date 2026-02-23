class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.4/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "ce22f97a5bfc731b74988c67c6e080e27cedb01bb7172b758db9a016652225b9"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.4/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "a4401609cb055c13606fc5218e68c6a1c08bda4f5bf792be9a89d657b08bf3cf"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.4/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41b07362e8e6253e131045575d8eec2b14bb23f16799e49ea6ecdbbaa792af8d"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
