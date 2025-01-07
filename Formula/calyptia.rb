# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.15.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.15.0/calyptia-cli_3.15.0_darwin_all.tar.gz"
    sha256 "ad3c2e05b10c9bd3b2bdb55ac87e0e410cc78c275c9db9ac5eb3f9ae58c278b5"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.15.0/calyptia-cli_3.15.0_linux_amd64.tar.gz"
        sha256 "0285e62ce9fde5958bce57195fa4fbdc9eaaf53c4ce6e8c06712e87e0e3939d7"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.15.0/calyptia-cli_3.15.0_linux_arm64.tar.gz"
        sha256 "7db3af2fe54a754357eae0ad188c6d1caf137721c172d15e105effa3471d1baf"
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.14.0/calyptia-cli_3.14.0_linux_arm64.tar.gz"
        sha256 "22ed8bedbc2eeee43e749360d4c5258e9171b38bcf1fe0302f33051e63a82e97"

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
