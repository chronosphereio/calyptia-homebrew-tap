# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.16.0/calyptia-cli_1.16.0_darwin_arm64.tar.gz"
      sha256 "764d2c9a09fd8abe187f4e57bfd0cc12582da9fe15015e41ae8ea939f6d214d7"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.16.0/calyptia-cli_1.16.0_darwin_amd64.tar.gz"
      sha256 "f18c7e20e0e2d94f43987f682b746b03266b1a8db1eeb870991a6d8cac346d68"

      def install
        bin.install "calyptia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.16.0/calyptia-cli_1.16.0_linux_arm64.tar.gz"
      sha256 "498fe4c27bc5da255bf91a7a58cb286f56933dea55f2d642f425484f2f980e1e"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.16.0/calyptia-cli_1.16.0_linux_amd64.tar.gz"
      sha256 "8712f543dec4d3ed5da1587893608da301ce396540d949a8442a8ff937e4c10f"

      def install
        bin.install "calyptia"
      end
    end
  end
end
