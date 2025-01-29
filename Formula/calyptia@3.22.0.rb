# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3220 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.22.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.22.0/calyptia-cli_3.22.0_darwin_all.tar.gz"
    sha256 "f5cddd25732a70bce5bde63a46c84000636e060b0a8f55a97d97e0a9c5260c45"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.22.0/calyptia-cli_3.22.0_linux_amd64.tar.gz"
        sha256 "7f286bff60733ea50ffc79c9a0e791af289c1ad929bc77afa8b088293ae84120"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.22.0/calyptia-cli_3.22.0_linux_arm64.tar.gz"
        sha256 "06b08f05429dd27125f333dad59eca8a09b4a2e10604b4a90e25745213352054"

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
