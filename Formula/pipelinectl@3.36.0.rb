# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PipelinectlAT3360 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.36.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.36.0/pipelinectl_3.36.0_darwin_all.tar.gz"
    sha256 "f5876dd68a83bb1c52d7275352d07331d70a21bda074273bfbbbd7c4a5d9e472"

    def install
      bin.install "pipelinectl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.36.0/pipelinectl_3.36.0_linux_amd64.tar.gz"
        sha256 "a102be5c147f8737ac438fbd6081dcb10bbd15bc290d8e81770cd3d739d4d3ac"

        def install
          bin.install "pipelinectl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.36.0/pipelinectl_3.36.0_linux_arm64.tar.gz"
        sha256 "d5ac9b0dbda027bd56e35cbfd6554257792c3640e7880702d7d4898f94650bf0"

        def install
          bin.install "pipelinectl"
        end
      end
    end
  end

  test do
    system "#{bin}/pipelinectl version"
  end
end
