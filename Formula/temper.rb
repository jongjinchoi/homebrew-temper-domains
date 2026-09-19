class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.1/temper-bun-darwin-arm64.tar.gz"
      sha256 "f819b82870888496f035ddafe67a4249711d75a125b3cb2ff9e96838872d821a"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.1/temper-bun-darwin-x64.tar.gz"
      sha256 "6a93ec7e5c44965bc7f86035de50675d7169e1bf2191bf6e5aa4e1ccbfcf3f23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.1/temper-bun-linux-arm64.tar.gz"
      sha256 "c859c5608f1efd61817a47c6f0b933aa9ab7be571af0a3eefbc063aad49831e4"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.1/temper-bun-linux-x64.tar.gz"
      sha256 "c9f22b8d038264784d5e6c7ebde29a99f2dbe9216934c3ebf672f0eabb356c87"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
