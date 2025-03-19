# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PipelinectlAT3350 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.35.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/pipelinectl_3.35.0_darwin_all.tar.gz"
    sha256 "16405ca45fd5e6e282225e59038cd1e5fec93afaff0764dbb38e096b3c47cf68"

    def install
      bin.install "pipelinectl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/pipelinectl_3.35.0_linux_amd64.tar.gz"
        sha256 "af191ea4b04f4246d18ec33a6d655f96e584698238c048a318518e2eebcbb8ef"

        def install
          bin.install "pipelinectl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.35.0/pipelinectl_3.35.0_linux_arm64.tar.gz"
        sha256 "42ee386a0c4db0c7b50c03a78197324b5f5e5f4f2b014e585f284b503e8b0642"

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
