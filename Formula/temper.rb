class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.1/temper-bun-darwin-arm64.tar.gz"
      sha256 "2b035b52875cdd92a24da5bd56161691ad9f511edf3ac4581fc17c76d60f2b6c"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.1/temper-bun-darwin-x64.tar.gz"
      sha256 "0c48cefea67cc5b2f78c92830dfc639d422a2c7c2fbd6d3d36a2a90881a0a6bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.1/temper-bun-linux-arm64.tar.gz"
      sha256 "b017bc82c00cf4f9e8193344c9a61f879f1a0e54198fef6ecea7f1c727488743"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.3.1/temper-bun-linux-x64.tar.gz"
      sha256 "90e4cf0a8471d52f67213860f28f4a129f366de2b180d7af07225a9ab59f79e5"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
