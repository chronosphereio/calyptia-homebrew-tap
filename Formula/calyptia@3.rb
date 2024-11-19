# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.11.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.11.0/calyptia-cli_3.11.0_darwin_all.tar.gz"
    sha256 "3ad94807c98da34a52e6dd26e5e5ad7fe8da37a604fc733ff8ec0d10e2798239"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.11.0/calyptia-cli_3.11.0_linux_amd64.tar.gz"
        sha256 "9dfc42567c6e645136f7852279c167a3c9a47dd262f2080caa082b5abe891707"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.11.0/calyptia-cli_3.11.0_linux_arm64.tar.gz"
        sha256 "7f3f97a0cdaf6e592c929ccb088fc98c3afffceda3420cea738a0f98687bbcec"

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
