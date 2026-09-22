class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.0/temper-bun-darwin-arm64.tar.gz"
      sha256 "f7318044c935040fc57e1928651b8086f1fc9482e42a424bfb285917d53f8134"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.0/temper-bun-darwin-x64.tar.gz"
      sha256 "408f26a0ea4125b9817bd8984e29182fcd9f5157c364a86815b4e9448efebe12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.0/temper-bun-linux-arm64.tar.gz"
      sha256 "8d9fff7df11693a9cf2c10afcd69385293cf4e048f265ad023062ccd1973340f"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.5.0/temper-bun-linux-x64.tar.gz"
      sha256 "ef73734e770054b9c12e2e7c0aca469cbe5bed83a4fe51330e6eddc94121b5df"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
