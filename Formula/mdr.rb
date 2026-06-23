class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.2/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "e0838c37de1c8e25aef6bf7b5aa95acf4f3970f4f722c612139e1e8c7028ac4c"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.2/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "660b0a8facbe2463a1f99cc85701dc125372a37ece9a591a6f729108f77e949e"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.3.2/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e04435e8174b6babd437f520fd672d83e732f6deb7fc10aabfb0f3f991101b2"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
