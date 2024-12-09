# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3130 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.13.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.13.0/calyptia-cli_3.13.0_darwin_all.tar.gz"
    sha256 "2e4bb3eba14f0e49e734c54371d4cf244adbbb05fa01caab06f06b524e794a01"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.13.0/calyptia-cli_3.13.0_linux_amd64.tar.gz"
        sha256 "6b86b72cccd1d8a5a307ab4ed17efbfc3bf12133d3d3978b521800f7723d8b71"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.13.0/calyptia-cli_3.13.0_linux_arm64.tar.gz"
        sha256 "41971b26be6ba83a3bf975328d0bf41acc179c3a01a62c3b193f48e7dcfaecdb"

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
