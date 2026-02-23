class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.5/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "f93e257b75047da4ddab133184fafa8ec69accd65a09d95ad6ec5cf451c1dc16"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.5/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "3b2073431aaf3987d81e572c4c957803f1bb31a4648263f07d0e6d13816dac7b"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.5/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eada3e34507c9921255aaf6d1679a9defb685bb2764448595ce459542292c469"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
