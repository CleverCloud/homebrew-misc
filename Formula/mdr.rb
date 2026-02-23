class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "0e1c9d1a63506bab25c7a881b197b26e332162d61cc5e4bb58d1452cbff94b93"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "7d45780bb5f236f5355b2033e83d89a6373fcd446902ecd2cceda2621d01ed15"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dbd04f0ce5174a384b7c5b5a9f42e438a173c2649e5a5ed7c7363bf70fac4ab9"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
