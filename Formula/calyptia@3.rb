# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.31.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.31.0/calyptia-cli_3.31.0_darwin_all.tar.gz"
    sha256 "b9558618e4b02fb85462ac0e5ee9f241652144ee88eab4a7f7a4622c55137708"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.31.0/calyptia-cli_3.31.0_linux_amd64.tar.gz"
        sha256 "58e25d218a8191b6b2f65f88160aeb9ba940879d0901eff02e2429bb1fbfd52b"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.31.0/calyptia-cli_3.31.0_linux_arm64.tar.gz"
        sha256 "4b6451fb2e57431c58f5590efaf197b5876293c20035c1da6fedac5d05448e35"

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
