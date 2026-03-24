class BodAT07 < Formula
  desc "Board of Directors CLI (v0.7.0)"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.0/bod-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "51817ec0e191665d6a45032b7081b7ca8903cc8f1590c0cbf81ea5d328d3548b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.0/bod-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7a85b7a55abd44510f05bb43285e2d80e89ed0424d4cb3ef1084e15bdd50ed2"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.0/bod-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bc772b0e71dc4a6cb45bd33938cc2e0e758cb8a22db5157fd08e6159c2fcfea"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
