class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.0/temper-bun-darwin-arm64.tar.gz"
      sha256 "edabefe2e0527d94187213009af98700a569c8c0a7beaa59eb6482c0b19076dc"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.0/temper-bun-darwin-x64.tar.gz"
      sha256 "82c20bf6116f5749055e42513032a7806195900d39f49ff30fc82b50e5a5d1cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.0/temper-bun-linux-arm64.tar.gz"
      sha256 "147111125ff149c1a9c7c88d0894dddaf029bf6e1cf4e0e3f9a71c40d4088443"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.0/temper-bun-linux-x64.tar.gz"
      sha256 "d913179eedf5e28cca73e3ac1f647ede9ad339a585dbdd55f9bfe574ff760a63"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
