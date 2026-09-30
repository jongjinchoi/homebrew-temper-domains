class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.7.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.2/temper-bun-darwin-arm64.tar.gz"
      sha256 "ff71f6fd7a33efc3d90fcb2b6f87be981643dd1e6d042bac165ce3481625ba54"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.2/temper-bun-darwin-x64.tar.gz"
      sha256 "4e785b356e17a6f5f50320cfa1df94765e59077305e3af03bf0525ea71723ebd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.2/temper-bun-linux-arm64.tar.gz"
      sha256 "d081d57618a1d685c7a47accd9aaa39f413324f4149c865f0c087dd595ea78d3"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.7.2/temper-bun-linux-x64.tar.gz"
      sha256 "13dd526869e6927c63e16b5e0048b8d6abb4d71326bc939ddb66ac5671c47987"
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
