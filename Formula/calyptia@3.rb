# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.34.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.34.0/calyptia-cli_3.34.0_darwin_all.tar.gz"
    sha256 "c56c17beff8ecf4eb6c3fc89fa6a0d5ad744b2382987ab46d5d96ec1bf96677a"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.34.0/calyptia-cli_3.34.0_linux_amd64.tar.gz"
        sha256 "67214155b8709f635ad35ccb40a28d5541e1a353b71814b272bbe82ee73f5f49"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.34.0/calyptia-cli_3.34.0_linux_arm64.tar.gz"
        sha256 "7b7b36c395e4b481839eee5da6f689b410d219b20820a744134525bdbfe27dfa"

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
