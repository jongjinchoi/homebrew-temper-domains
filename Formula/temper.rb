class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.7.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.0/temper-bun-darwin-arm64.tar.gz"
      sha256 "ca1c5c33cab9ad539e8ee057b9679cfc06803625c7c06546e0ad9c339527b552"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.0/temper-bun-darwin-x64.tar.gz"
      sha256 "1738c78a169089c6642b201d71c40c7fc8f7826fde8d67315f6074da90ee6498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.0/temper-bun-linux-arm64.tar.gz"
      sha256 "eb1e4853baa96de2fb1a736139fbf10cc791dc52ebcfc2f28e7eefffec13e866"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.0/temper-bun-linux-x64.tar.gz"
      sha256 "af475e6d3ff01eaf31c445e13335ee1c8830c19ea2d831c3d1af0320bdcff9f3"
    end
  end

  def install
    bin.install "temper"
    pkgshare.install "LICENSE", "THIRD_PARTY_NOTICES.md", "SOURCE.md"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
