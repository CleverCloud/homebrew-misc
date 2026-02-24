class Mdr < Formula
  desc "A lightweight Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/CleverCloud/mdr"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-aarch64-apple-darwin.tar.gz"
      sha256 "3029a123825a76f08def1a3786d13c484b9632cb3076787439e4c6e8465e9695"
    else
      url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-apple-darwin.tar.gz"
      sha256 "1c96c3fe7e6030b98ae5675dd92a6b7571331b682a185004ac4ba3a10c456209"
    end
  end

  on_linux do
    url "https://github.com/CleverCloud/mdr/releases/download/v0.2.7/mdr-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c79e533a17786b9919a26f3ffd8e971b123e8c4e99c17d2e26c46eff282eec90"
  end

  def install
    bin.install "mdr"
  end

  test do
    system "#{bin}/mdr", "--version"
  end
end
