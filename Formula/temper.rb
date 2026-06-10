class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.3/temper-bun-darwin-arm64.tar.gz"
      sha256 "da66028754e4195b402eea1d2918a62ece50bd86b333298598d04b1bf9ad4bed"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.3/temper-bun-darwin-x64.tar.gz"
      sha256 "0ddfe22a5aa40c418893cc41d70617168ab075af1a64f4b66dcd57bddaf7e872"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.3/temper-bun-linux-arm64.tar.gz"
      sha256 "5df9d08ba425a3548f475d65a79c2ac3de2abd491ededb258ee387d8f843b7da"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.3/temper-bun-linux-x64.tar.gz"
      sha256 "5441d8f4a08b4c0e06741a3b49184e9cc1d50eef89e7cae9947883e78e67e1a4"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
