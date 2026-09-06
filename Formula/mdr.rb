class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.4.0/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "188c5890f50f6a45b8fc9540f256a1677a5df1cbe0f7b8817268555f2ab0f6c2"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.4.0/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "38c9ad5a375b55a069d51757798244a81b4289f628e9bfcdd197dbb85f77bb7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.4.0/mdr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7eb670f10d4b2fd0277a7d81cc197e3f1b93890ccc8b2ddcc64da5fd4407e1db"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.4.0/mdr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a6f7680be802c3759c2d1f4a50b27c872e52913833f6e8c4b15c4b9513512a8"
    end
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
