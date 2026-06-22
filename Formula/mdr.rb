class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.1/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "b46ccfecd4b1a77ae68b27d8cbd815ba1c663dde3a1cf8b1a501cbf0ef6ac652"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.3.1/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "3405d53b26814a3d512dbfa7b34ed88ce2b3ed493fbefedc626bc44358760c01"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.3.1/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bfc0c2d653e1e323b35ba4210f242ea0cecb4fe9db84950795cefa1f9a10ad69"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
