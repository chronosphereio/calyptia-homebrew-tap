# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.0.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.2/calyptia-cli_3.0.2_darwin_all.tar.gz"
    sha256 "65ca7b01320d1cc323cbd865630759299161920203edcb357d1664d5abbbac4b"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.2/calyptia-cli_3.0.2_linux_amd64.tar.gz"
        sha256 "d67f5a87eb23af9cb3c3ce361d768d6044621f96c9796eccf1ce4e7df37d87e9"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.2/calyptia-cli_3.0.2_linux_arm64.tar.gz"
        sha256 "654c471079bde60ab0106a912764e4be1e450624303e4d0929a3bd274fed061e"

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
