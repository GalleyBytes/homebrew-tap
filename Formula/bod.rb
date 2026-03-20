class Bod < Formula
  desc "Board of Directors CLI"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.6.0/bod-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "9bbfef9b6360874ee206b351c5ac2635e927472ce9d04dbc4ff95841c7373f7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.6.0/bod-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "629de50ec6477869261f484cd4ea4d5b4332e2ff7d8ae2ffaad8270ddde88b3b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.6.0/bod-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fdd258d2ff17fa0f224260f4a562b85dd5789b927e7d1a6ceaa9debd9576664"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
