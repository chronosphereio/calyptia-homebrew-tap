# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3140 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.14.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.14.0/calyptia-cli_3.14.0_darwin_all.tar.gz"
    sha256 "393d568e663b740be6d9700f1dd85d4a00b6d8ef8542c2384ee0b8a9d5888911"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.14.0/calyptia-cli_3.14.0_linux_amd64.tar.gz"
        sha256 "fa8ea332d6458eee636f19ef38f4cf2ee72441339a58441df68c8f11549286ce"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
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
