# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.21.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.21.0/calyptia-cli_3.21.0_darwin_all.tar.gz"
    sha256 "7d34da91b3a0f9f135c7e2af775dfe3bbf437a0af4586f53274a2affe75487d1"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.21.0/calyptia-cli_3.21.0_linux_amd64.tar.gz"
        sha256 "85abd8011628eb7e7ff1e29c17f73803975ee124b876d8bcb0ce8cb9779fba53"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.21.0/calyptia-cli_3.21.0_linux_arm64.tar.gz"
        sha256 "58e1137d93f55a47c0bf6f196811a42977ef216942f1132d1b3f0f991c75ca80"

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
