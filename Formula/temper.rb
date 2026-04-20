class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.2/temper-bun-darwin-arm64.tar.gz"
      sha256 "ddc236cef63c50fc148c453078d2807322a4cbf9d27b71b387e3c40213e74023"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.2/temper-bun-darwin-x64.tar.gz"
      sha256 "7df69167f3b0df2b283f215e87ecbfab7c8c39931c956f7d0173abcc6f1e1188"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.2/temper-bun-linux-arm64.tar.gz"
      sha256 "d949ca5fb1f9fd3a3c9e384a4095b745d44abec4d880f0d16beced6c55283d0b"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.2/temper-bun-linux-x64.tar.gz"
      sha256 "62034cef817d138094acb092963dbc24b8196c26b7137d143b60cf3fbf0fa9ab"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
