class Temper < Formula
  desc "Never leave your terminal to find a domain"
  homepage "https://github.com/jongjinchoi/temper-domains"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.3/temper-bun-darwin-arm64.tar.gz"
      sha256 "6a7e542b189e50ec47ef56af532f6ea129e648207244387ae414cd6e462f8e68"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.3/temper-bun-darwin-x64.tar.gz"
      sha256 "9c412003e0ca793b75a874bf2b44e7eaf8429621d10dc3afd6eba8827bcae3de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.3/temper-bun-linux-arm64.tar.gz"
      sha256 "3352427125ec6619d40e09e689e8f7c4f09d0966e9f3abe5d69748cfe536be9c"
    else
      url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.3/temper-bun-linux-x64.tar.gz"
      sha256 "8e666a08d6f98767960a3b317eab0421047658da737acdd0641ba1e2a7861221"
    end
  end

  def install
    bin.install "temper"
  end

  test do
    system "#{bin}/temper", "--version"
  end
end
