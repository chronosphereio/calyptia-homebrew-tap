# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.9.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.9.0/calyptia-cli_3.9.0_darwin_all.tar.gz"
    sha256 "32a6f255fb31a8fd16b72bfcc2baffea79ec78d1ce8a52865ade15a4f5a0558d"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.9.0/calyptia-cli_3.9.0_linux_amd64.tar.gz"
        sha256 "07f6a2b30661eab4fde69d9fd1ca3f70b17553863b80e9bdc740c74f2208e6b4"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.9.0/calyptia-cli_3.9.0_linux_arm64.tar.gz"
        sha256 "b05085dfb7fd1177e243007eb83d9c9a877695635fecd85b085f412ce0ccb140"

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
