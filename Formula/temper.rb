class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.0/temper-bun-darwin-arm64.tar.gz"
      sha256 "49af2e0c1db3ca60844a9f30508ed8fdca61cf4fccb6e10ddd7bd59311d3e6fe"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.0/temper-bun-darwin-x64.tar.gz"
      sha256 "e8b50d7db723ff010fef50f93d50dffcf40d43bad6e2794b827a2471f8afff1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.0/temper-bun-linux-arm64.tar.gz"
      sha256 "5121c49640c29f6f6ccf2644d6851fcbe24a50c6a3360751645bc7f1f13f7932"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.4.0/temper-bun-linux-x64.tar.gz"
      sha256 "1db9ea3be63da2ea84e60ad7efc68c5b74c1573316327a15062d4ef2eb4e71f2"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
