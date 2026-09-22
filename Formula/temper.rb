class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.2/temper-bun-darwin-arm64.tar.gz"
      sha256 "b42abbcd2d8bb576db11c925a4d38b78fb19cf50959b96daee74d13d2c6e5632"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.2/temper-bun-darwin-x64.tar.gz"
      sha256 "05e8838e884c8d4efa2fa7e49fb42e17c98cfcc67a00822fb28251e4dc179eaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.2/temper-bun-linux-arm64.tar.gz"
      sha256 "1cb9c9dadfb9ca6b691ff068b8e46d801353812be291973512e5346252589944"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.2/temper-bun-linux-x64.tar.gz"
      sha256 "a9497a028995e389e6709643510a8b4206a2b7ba73102076b9e9bd596c555dc5"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
