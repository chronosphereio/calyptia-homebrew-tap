# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PipelinectlAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.62.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.62.0/pipelinectl_3.62.0_darwin_all.tar.gz"
    sha256 "6ffe007e258146c6e1b26e5c69b32026c073875d0630c44256077384563a4511"

    def install
      bin.install "pipelinectl"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.62.0/pipelinectl_3.62.0_linux_amd64.tar.gz"
      sha256 "fafaef1ffa3bf873b8b3d0dc73bcb42b5d7833e2d8c1d3f160f1778511be8e1b"
      def install
        bin.install "pipelinectl"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.62.0/pipelinectl_3.62.0_linux_arm64.tar.gz"
      sha256 "8f3dae42fad42081e1efa6b9608899047c3576efa5589cb9fb225195030ff47a"
      def install
        bin.install "pipelinectl"
      end
    end
  end

  test do
    system "#{bin}/pipelinectl version"
  end
end
