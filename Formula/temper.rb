class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.2/temper-bun-darwin-arm64.tar.gz"
      sha256 "09dd4b045244c35ca8622febbd3d9195d98e8cba017fbd48c3b8c29e7804d6e9"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.2/temper-bun-darwin-x64.tar.gz"
      sha256 "47d2f7914747b4bf12b37442f7976ad7126d77f883cb844f851be0156d10ba94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.2/temper-bun-linux-arm64.tar.gz"
      sha256 "0818e5342e9dae929e1d6dcd8eb47563398a73e6ce394460f07289ce6c5c0b06"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.2/temper-bun-linux-x64.tar.gz"
      sha256 "bbcd8b9eaf023c6d4dfe1d7c05f908284cabe5d05c0d8c66dedd10e62d7e3b80"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
