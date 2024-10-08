# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT331 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.3.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.1/calyptia-cli_3.3.1_darwin_all.tar.gz"
    sha256 "dd83044fd89b42167d75e01905b2f69d491cd38af618b03b5da2e7a760517cd2"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.1/calyptia-cli_3.3.1_linux_amd64.tar.gz"
        sha256 "bbb4c411c9dbc40818a118ed0eb9560be7c73a635431343770db67270e086f50"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.1/calyptia-cli_3.3.1_linux_arm64.tar.gz"
        sha256 "3ad1a5afb8e89789080785a06334b0706f6bb55a5b6f514688288ea854676184"

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
