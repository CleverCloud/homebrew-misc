class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.2/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "d1f4963c3ec9594b526a28cd3fd3fb89ef5405bf5fef251ee23ec6f0f893042f"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.2/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "3d7044ac3a2390804be4ba7e1d528c2689659d767e8b6ed311df28bc0f230865"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.2/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "90bd52e0cce415ec07e883f16240585ff53e645a8fbe5c8b6bb0cb9cc84cc942"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--help"
  end
end
