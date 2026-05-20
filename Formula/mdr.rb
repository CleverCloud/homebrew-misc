class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.0/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "f2a35b2aa5e703a22a82c39c7b2b03e2420057c6b82f256323400b9c0c7c7ff2"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.0/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "fd8c63963b987ce148e270fcfebff1f5745cc00ca67fc88be7b047b8436466ed"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.3.0/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4e272812e8f28f26f3477fa59e564dd6c7ec0603e59a4880176171b1dfcb6596"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
