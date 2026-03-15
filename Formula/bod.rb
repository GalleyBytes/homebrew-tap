class Bod < Formula
  desc "Board of Directors CLI"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.2.0/bod-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f84c101cd8cadd15c5a8dbea72a3ffd8ea2b5b21ca7da08471362579007ff683"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.2.0/bod-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb00375edf25f09f8c4ab5207a6a3ef07a3a656696e393ef9b8a28ca162bc956"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.2.0/bod-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16d8bb5ddeabdd9927aa34493e418a11aa8cad3058ca5e6a0167dc9bcfd43c97"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system "#{bin}/bod", "--version"
  end
end
