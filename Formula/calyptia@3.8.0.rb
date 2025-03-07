# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT380 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.8.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.8.0/calyptia-cli_3.8.0_darwin_all.tar.gz"
    sha256 "456542aa5015648673ec434f1936262c026682dd8a04f92776127cd71230b1f8"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.8.0/calyptia-cli_3.8.0_linux_amd64.tar.gz"
        sha256 "051cba2fbaae1f0865c571a7e4dbbea5b573bab2baa294481fefc87ef365d803"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.8.0/calyptia-cli_3.8.0_linux_arm64.tar.gz"
        sha256 "0faa1ab36f7c7a6d6379bebab0e8d350b8c8c3b6b3b2390b5de2c34f737f861d"

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
