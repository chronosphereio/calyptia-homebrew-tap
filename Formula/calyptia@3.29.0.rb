# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3290 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.29.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.29.0/calyptia-cli_3.29.0_darwin_all.tar.gz"
    sha256 "fd10fa6d2570ebb6ef66ccb7f9e675aa444e1a05bebd3b331675eb77b10c3ea8"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.29.0/calyptia-cli_3.29.0_linux_amd64.tar.gz"
        sha256 "bb07d9eb63509e045c936409dfcef235a5e163944bf215dccd4dc7beaa29fab8"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.29.0/calyptia-cli_3.29.0_linux_arm64.tar.gz"
        sha256 "08ff8ae56a30fd5934e91e825a1a2024e654df8ec8227fcb2f9ba9bef80cc209"

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
