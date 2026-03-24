class Bod < Formula
  desc "Board of Directors CLI"
  homepage "https://github.com/GalleyBytes/board-of-directors"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.1/bod-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "663297c59f429e7e49bc48febb768925b91032785f14da85275e102d42b033aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.1/bod-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe0cb1629f138f6b0fa961f68929619c9b025866b33b2694eb4b34f4a30efe04"
    end

    if Hardware::CPU.intel?
      url "https://github.com/GalleyBytes/board-of-directors/releases/download/v0.7.1/bod-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31c874d1b43f84073abd960c0b54b788c184f8da060a4cc8214103bff42deca5"
    end
  end

  def install
    bin.install "bod"
  end

  test do
    system bin/"bod", "--version"
  end
end
