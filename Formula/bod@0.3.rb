class BodAT03 < Formula
  desc "Board of Directors CLI (v0.3.0)"
  homepage "https://github.com/GalleyBytes/board-of-directors"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.3.0/bod-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0526860913cf44f2baeae0ebae4195e9bc54b711a1e854a4e76b7bec26a653f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.3.0/bod-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8837fdbe74151daa86cff0a928e8edd31253ffb6f08413588c67b11cec8dc043"
    end
    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.3.0/bod-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d4d167f313410924df3446892846fb9bc6b89061dd0101f43d4b8fb8aaa2e59"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
