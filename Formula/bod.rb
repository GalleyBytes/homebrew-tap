class Bod < Formula
  desc "Board of Directors CLI"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.5.0/bod-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "873bc98f4bdf3d3ee84baa26a48c67d003614ee2b4f694933b6f7838e5e7f338"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.5.0/bod-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1072fa9fda0ca2b2dc39a209d98f902df84c2f3dd4e5bbdaa28f664c68d49fa"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.5.0/bod-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca56d61ce0aa993960abd48e06e56ae8411e242730d6ff59ec322e3e9768b2d5"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
