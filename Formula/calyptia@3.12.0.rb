# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3120 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.12.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.12.0/calyptia-cli_3.12.0_darwin_all.tar.gz"
    sha256 "76d807f38cd172b7055aefbc462c07137d90d3c2e3980bdb7bab474a9a4a9cb7"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.12.0/calyptia-cli_3.12.0_linux_amd64.tar.gz"
        sha256 "5f8bf04dc66ee7d16386e3865b1355007a1ca09a311c4fb728b56b485319c866"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.12.0/calyptia-cli_3.12.0_linux_arm64.tar.gz"
        sha256 "83ca41ab2172e14d20e7eca1b11df6e4933b7c654ffec1fb27d7aa01c84c7e8b"

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