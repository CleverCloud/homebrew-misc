class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.1/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "84fa11f46cec8e13d43abe2b8deb6a1fcc7640a6d5b921f7781ef35ac6c06e49"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.1/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "9a91255cbbf3d66045420996407618c316a07e28228e4a204bc2e40f61f4a4a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.1/mdr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1924b682f510ed99e9c1fba7fea5486e417f270e34757ceeb595ec534099159"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.1/mdr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a81eab5f8ee27de704dd9c8be5eea81770d19fdf393685f16f4dd30f37265a1"
    end
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
