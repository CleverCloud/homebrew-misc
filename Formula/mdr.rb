class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.0/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "9badd94d310b806eb2ec21d5ffaf23f4cca3deb90421531f4192c1b1c789339c"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.0/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "1be8630116d643acd7f3eb5dd3127cb3510458c31761127d797c36dea3ae189e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.0/mdr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ba553488943d06f494308cbb6ac26218527ec2df777dd350fdea760cf4fbd9d"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.6.0/mdr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "346fa15aee468ee2d43517af72d70ed78c3ec1092636a0bf95d67b1febcfcf65"
    end
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
