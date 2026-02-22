class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.3/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "5b6a607c24c3cae1e34043c2bc3faa5d071b3f64944f07f4980fa5d56c6c98d4"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.3/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "76c5dc54210b98a51f7f70eafd30643b8e2fc1b8a9929bde16b93b3344194b5c"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.3/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f77493dd6d12cebf0c6a32277771572a03d7964e9004b481df3d11fe083743bc"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
