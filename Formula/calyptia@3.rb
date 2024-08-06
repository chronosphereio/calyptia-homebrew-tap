# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.2.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.0_darwin_all.tar.gz"
    sha256 "0866b26cb189fa5bbcaebedc871b1cfd888b261fd3ecfffc7a671fbb3a0531ab"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.0_linux_amd64.tar.gz"
        sha256 "cb6102a15f18d9bcdbed5f558e7bc974684c9243038a34333344a6788dc735ef"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.0_linux_arm64.tar.gz"
        sha256 "6264713e5268d0ec13d3bce77e7890a53f18d1d89ea5f131f7570871bcdd6f8c"

        def install
          bin.install "calyptia"
        end
      end
    end
  end

  test do
    system "#{bin}/calyptia version"
  end
end
