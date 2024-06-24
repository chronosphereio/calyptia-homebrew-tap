# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.20.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.2/calyptia-cli_1.20.2_darwin_all.tar.gz"
    sha256 "323ea7349f0ce624a007824743404035734ef634f24a1d02d169aeea718af14a"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.2/calyptia-cli_1.20.2_linux_amd64.tar.gz"
        sha256 "909500b6a02c7e647d1a6cc36984009edcab9f43446809583864e46fd64d5673"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.2/calyptia-cli_1.20.2_linux_arm64.tar.gz"
        sha256 "8d9e5719d2f9a39beab8eeae6320d1e1c8fd181f52dcc5a246f19ef2878db1fc"

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
