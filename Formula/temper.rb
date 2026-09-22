class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.1/temper-bun-darwin-arm64.tar.gz"
      sha256 "f0237faf14cb59aae85c4751a4d76ec1b58d6a90ad7ea909f0e68a6929f06cba"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.1/temper-bun-darwin-x64.tar.gz"
      sha256 "248d3e96205c1bfbaab7d62d09145a64a1767dd19142c57bd4af588cdb3a14be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.1/temper-bun-linux-arm64.tar.gz"
      sha256 "cdd9ad501ade914c2afdabdec3cffbd6623375765369348441f37327b12163d9"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.1/temper-bun-linux-x64.tar.gz"
      sha256 "6a8801390550358a57bbef20a7f2bad1b9bf0acc7421f49f92bb451cebcf0df3"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
