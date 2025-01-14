# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.18.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.18.0/calyptia-cli_3.18.0_darwin_all.tar.gz"
    sha256 "d19ea198ff225e2bfa912e43901511c0a717f7c21bb3520c404a60394db84e7e"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.18.0/calyptia-cli_3.18.0_linux_amd64.tar.gz"
        sha256 "c43f8514b20bbba8c5792f6f854c894fc9855d66af46c63f26710e0bf4bed499"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.18.0/calyptia-cli_3.18.0_linux_arm64.tar.gz"
        sha256 "6276e8dbb39ab0207da65cabd375e4d2f01967776a5312da2b7b97bd11cca8b1"

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
