class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.4/temper-bun-darwin-arm64.tar.gz"
      sha256 "063b4f555d95538b88ce3df92452f74fb781de5c6e2c12887064c45f0aaa582a"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.4/temper-bun-darwin-x64.tar.gz"
      sha256 "ea3121aaf620cdbb970a2db1db0a695a2b5121ef00a44d5e19f7f6940fc6f404"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.4/temper-bun-linux-arm64.tar.gz"
      sha256 "fd2a5c60535ab1aba4e569060fe9690262385b8356bd5d90e1c8bfcaa400efa7"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.4/temper-bun-linux-x64.tar.gz"
      sha256 "cf94013bdafc0f364f39ca81f00fb496a03fa0e24bfa81edd5d98a4b00644765"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
