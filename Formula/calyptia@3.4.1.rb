# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT341 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.4.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.1/calyptia-cli_3.4.1_darwin_all.tar.gz"
    sha256 "e6d9e2e86df5dd2e2bd11ef6e6daccc438c5562d3ac287a4e0f92d5d406d16b6"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.1/calyptia-cli_3.4.1_linux_amd64.tar.gz"
        sha256 "4362f0108e8f671ea3fd99f6821f3ae61ab8b43954c80bd459074d25ce214ff5"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.1/calyptia-cli_3.4.1_linux_arm64.tar.gz"
        sha256 "d910d6ea462cf92aebc9a82bfd9d1d9221ea22e86de9589aba91c8ed8886ea03"

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
