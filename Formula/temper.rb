class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.7.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.1/temper-bun-darwin-arm64.tar.gz"
      sha256 "74b0f137db154c2b3d2179988baa667084e51748efdbe81a149dbf6ebe44762f"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.1/temper-bun-darwin-x64.tar.gz"
      sha256 "9c1ef01bc03f5668f85161629b767f89064b9a978541d6de9897e18f58541023"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.1/temper-bun-linux-arm64.tar.gz"
      sha256 "ed12724f3116682fe74964d4019ae3888adb7fadf7ea0be057030276f3fba833"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.1/temper-bun-linux-x64.tar.gz"
      sha256 "26d4ad38ee628ce95bea42f1571b37e5133e24010bd1029f02f711e65b0a3140"
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
