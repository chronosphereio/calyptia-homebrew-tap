# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.24.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.24.0/calyptia-cli_3.24.0_darwin_all.tar.gz"
    sha256 "dd9b7509bab29ca43a912c7224aaa08cc51c7553df3b7a48ad63a7e796bca274"
    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.24.0/calyptia-cli_3.24.0_linux_amd64.tar.gz"
        sha256 "e420cd9edf0c723aec2ae1a0571d3ac7f54bd2e7ba925bad04d0bde1a9497cdb"
        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.24.0/calyptia-cli_3.24.0_linux_arm64.tar.gz"
        sha256 "3f18d875a88dbbc100ff53631a97d655b3ca54418c5e98bd4af95f18fbea0920"
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
