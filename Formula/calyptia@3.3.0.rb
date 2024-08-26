# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT330 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.3.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.0/calyptia-cli_3.3.0_darwin_all.tar.gz"
    sha256 "0467317b204ff7ae52695094642c23248f44f2a7828d6f774c8b59c5cce3f301"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.0/calyptia-cli_3.3.0_linux_amd64.tar.gz"
        sha256 "581f6a2a075f990e1daf096a697e1f5309828a261998b9879087ad9ff121a88f"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.0/calyptia-cli_3.3.0_linux_arm64.tar.gz"
        sha256 "3e6a065cf815c498c003c42af478fb2f84877cd88af6694dadaafd75ca24753a"

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