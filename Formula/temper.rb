class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.1/temper-bun-darwin-arm64.tar.gz"
      sha256 "cdaaa9c7396f500056677b0efba757e9079ac1a856342877c479766df97b22f7"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.1/temper-bun-darwin-x64.tar.gz"
      sha256 "c76d9bb3a33b2808f40da9ca94f20a7defd3f373060af2452f567ed15ebea0a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.1/temper-bun-linux-arm64.tar.gz"
      sha256 "e536e36c591230dab12f7c9ec86ffa786b6898d8f5647602c205b56c63484085"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.1/temper-bun-linux-x64.tar.gz"
      sha256 "b87251862c270df0aa5b3fa0f65873cbd03347181ee4527f0474af1218f2dcec"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
