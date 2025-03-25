# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.35.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/calyptia-cli_3.35.0_darwin_all.tar.gz"
    sha256 "8bfaa1340d143da0c33bc78f8d05202f7c66ee44c90761eb20f91124f15eee45"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/calyptia-cli_3.35.0_linux_amd64.tar.gz"
        sha256 "6957736340a4295a1c149e4996ca31df5e070ac3a75d47b3f544d62c1f0e7283"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/calyptia-cli_3.35.0_linux_arm64.tar.gz"
        sha256 "3d7c1de978817a3fab3fa3b42d5a422962c60d8065ee6e133e5fabea58ce0c31"

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
