# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.15.0/calyptia-cli_1.15.0_darwin_arm64.tar.gz"
      sha256 "cea6265738299c59cf0f431fc8f21b793cff7663e8b11aaa3a72c49dfdc34f48"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.15.0/calyptia-cli_1.15.0_darwin_amd64.tar.gz"
      sha256 "6a761dc8bfaa16f734f3ed9cd87ed9a649b2c2b6f24bf8be518e613a24cfaf3e"

      def install
        bin.install "calyptia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.15.0/calyptia-cli_1.15.0_linux_amd64.tar.gz"
      sha256 "72d2b2918fb52e20284d86a0d436f262107eae896fce478d2644a053d2ba25bd"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.15.0/calyptia-cli_1.15.0_linux_arm64.tar.gz"
      sha256 "ba60c61489d4e81354142fc62349b992f92f34fd5209a242d907a16d91c70cc5"

      def install
        bin.install "calyptia"
      end
    end
  end
end
