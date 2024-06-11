# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1192 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.19.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.2/calyptia-cli_1.19.2_darwin_all.tar.gz"
    sha256 "c524034005a9674a1f2c774bb9a6b83e76a984f5b4e0b78a43668c23897dc3e0"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.2/calyptia-cli_1.19.2_linux_amd64.tar.gz"
        sha256 "97d464e907b5ef7707691e304e690fb5d23613ebdd03755d1edda9b53d92de97"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.2/calyptia-cli_1.19.2_linux_arm64.tar.gz"
        sha256 "241efdafd21c92cae6afe0856cfc9e62f4b472831fee3e733d8afbb2c867eda7"

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