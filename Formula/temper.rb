class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.4/temper-bun-darwin-arm64.tar.gz"
      sha256 "398c30ab0c977dac8ed7c8bc95b19ba2aa068a42eb36fb0ff02c7d2a726e6c2e"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.4/temper-bun-darwin-x64.tar.gz"
      sha256 "e5f8f42858d639fcf6d291c86ab3951ce72106d5eecaa7d75be3085c3c7331da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.4/temper-bun-linux-arm64.tar.gz"
      sha256 "09114937d961abc12f8927ffb5eab8ad894f20b10ee5718abb14a5cfe44af6e7"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.4/temper-bun-linux-x64.tar.gz"
      sha256 "45553683c01e1d6e10337045a77914a8f50590bbb707b06a563ae7949ad88c79"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
