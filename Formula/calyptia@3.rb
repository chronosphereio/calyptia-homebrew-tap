# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.0.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.0.3/calyptia-cli_3.0.3_darwin_all.tar.gz"
    sha256 "5a4e52c891c0bb38e6c4ab7e939aadd8bb1aaf9f2e64b50965d7c849c8e787e9"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.0.3/calyptia-cli_3.0.3_linux_amd64.tar.gz"
        sha256 "a83378a76c9ac5ffa143e8cc98698a3213d52e39fa126ca25912e1fbc058ed95"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.0.3/calyptia-cli_3.0.3_linux_arm64.tar.gz"
        sha256 "3f2c40b2b9810d1e26e4d1dca9fe06998f9058d6ced02030efc9a7bbb428dab9"

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
