class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.0/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "5a9524c0499e307ab06dccc128f5a1040fd2e6a17a798e1e77b53b79c0987838"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.0/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "77367be053bb50bc81db2465d416795c82aede85ade81115779d95c5528e74a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.0/mdr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "196dd5fd5eb475571298db4bb33761b6a7d0b0a627ded47cb68f3449ef9f5c12"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.5.0/mdr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c3eee0e96d4eab6f973a9e9cba1b56854c90305aeacb08c1de5078fea9f4e79"
    end
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
