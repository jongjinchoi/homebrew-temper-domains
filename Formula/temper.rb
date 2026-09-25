class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.0/temper-bun-darwin-arm64.tar.gz"
      sha256 "b04b6b09ba82a8efe93618749ff364ba75690c2d78dfd665f8f918da3b12aac0"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.0/temper-bun-darwin-x64.tar.gz"
      sha256 "7b060d7fbab7b4876b6af987dc5a88923a4107e674a316177e6989ccbd968685"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.0/temper-bun-linux-arm64.tar.gz"
      sha256 "142ccd4ebeeb5d64aef59f4d4eb886451d18093416023983c985b0f666d0fdde"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.6.0/temper-bun-linux-x64.tar.gz"
      sha256 "8e3ab45f1063ff6b0b0b63dbda7ce6deeaa58166f5094edd1accbb2e93cbf5b3"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
