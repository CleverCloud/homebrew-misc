class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "6f43a47aaa2b5532ae11b67bd6a7d12f747a9f9216161538ae588dbb3ba0ced1"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "208b1d05ef969c9afc46b657ad06e4adf41f7886214ff73423be173992c84728"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "166f2e825a08630b3674e29589a91599b78348e26f175f6c57c6dd83b1db95b0"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
