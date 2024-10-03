# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.3.4"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.4/calyptia-cli_3.3.4_darwin_all.tar.gz"
    sha256 "d1adef076123abb05211cdad3c218764a268715ced2601bd48df8431e56b3f41"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.4/calyptia-cli_3.3.4_linux_amd64.tar.gz"
        sha256 "ba57487b53d150bc73542b4ee98e6c27bc4a5cfe63c08f863a6f1a9ed0292812"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.4/calyptia-cli_3.3.4_linux_arm64.tar.gz"
        sha256 "b658275632f08de64e5468f29a5c3bf2930dea5399ffc352077975dd3598aa2d"

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
