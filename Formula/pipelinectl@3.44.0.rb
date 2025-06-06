# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PipelinectlAT3440 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.44.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.44.0/pipelinectl_3.44.0_darwin_all.tar.gz"
    sha256 "b8a12709f5d5149af5b5f1ff46cf49cb6d91a201d9eeb8120f28b8f14e2790bc"

    def install
      bin.install "pipelinectl"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.44.0/pipelinectl_3.44.0_linux_amd64.tar.gz"
      sha256 "12afb9dcf61b21074aa400b70e9e868fb666cb67e3ee22bf081d7e305987d90f"
      def install
        bin.install "pipelinectl"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.44.0/pipelinectl_3.44.0_linux_arm64.tar.gz"
      sha256 "4f3581bb0efa4998e03d0064d36bc13a6b2f03dff4adcfa20b458dec99e9eace"
      def install
        bin.install "pipelinectl"
      end
    end
  end

  test do
    system "#{bin}/pipelinectl version"
  end
end
