class BodAT04 < Formula
  desc "Board of Directors CLI (v0.4.0)"
  homepage "https://github.com/GalleyBytes/board-of-directors"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.4.0/bod-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3eaa267b16642f8be13e4c180bf5784438b38d8063d2f3ac2720bef6fc770dad"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.4.0/bod-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b1e15da79bbd9ceeac956fb2d7af7cb19fc15cd52ddb33bcf2feecddd5f287a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.4.0/bod-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b812bd189d0368bc201c4d98806cbb15de4d2f98af2b57fb0acb27480fc98fd4"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
