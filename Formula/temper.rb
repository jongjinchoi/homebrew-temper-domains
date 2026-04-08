          class Temper < Formula
            desc "Never leave your terminal to find a domain"
            homepage "https://github.com/jongjinchoi/temper-domains"
            version "0.2.1"

            on_macos do
              if Hardware::CPU.arm?
                url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.1/temper-bun-darwin-arm64.tar.gz"
                sha256 "83b886db4284ccd7124f739bf68634b53150aafb886c550eb417daac066da8ad"
              else
                url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.1/temper-bun-darwin-x64.tar.gz"
                sha256 "ad03a0e74da0de4377fbc5bf003c46ce301fd5a7fecdb30aea7fd4157905a5fb"
              end
            end

            on_linux do
              if Hardware::CPU.arm?
                url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.1/temper-bun-linux-arm64.tar.gz"
                sha256 "24112c559ce887c5444fc32db6b267ac5caef803f438d082c698ba7b1bd373f6"
              else
                url "https://github.com/jongjinchoi/temper-domains/releases/download/v0.2.1/temper-bun-linux-x64.tar.gz"
                sha256 "f6d85b37dead58f860858276558a3b49d3330448d595711038a68e69052b2993"
              end
            end

            def install
              bin.install "temper"
            end

            test do
              system "#{bin}/temper", "--version"
            end
          end
