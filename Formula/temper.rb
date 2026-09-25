class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.2/temper-bun-darwin-arm64.tar.gz"
      sha256 "0b274ca1acef2f3d61079a80b5417a31632563e168bd378efc2be8bf8dfe3ce4"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.2/temper-bun-darwin-x64.tar.gz"
      sha256 "792563ab5613fc049129c814d7bf54f801d1270f9f2ffa6a3b139cd2783d36f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.2/temper-bun-linux-arm64.tar.gz"
      sha256 "018806fb3dca5b8999117367d62b7ec9e2edf93bef2ae54d73f8ab5a9fa749cf"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.2/temper-bun-linux-x64.tar.gz"
      sha256 "69dfc897ab2696dd287ec3969a6ef12d55bae222a1a744a10bfc0ac5c3cc8caa"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
