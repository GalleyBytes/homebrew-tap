class Bod < Formula
  desc "Board of Directors CLI"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.8.0/bod-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "2333bf5751980008726a93f53f72ac88b88fb717b56fa8bf34d902029b4f22e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.8.0/bod-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb108394274cb4c6683f43a67fb37f4258ba3302f80fc28d15452bafbae91a73"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.8.0/bod-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a20cead4bc1c7fab39ad6c704f2b02b6a2025fa86f4ca4e02c15af1d24253d16"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
