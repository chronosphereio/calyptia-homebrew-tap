# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.18.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.1/calyptia-cli_1.18.1_darwin_all.tar.gz"
    sha256 "cb4fe4b1082e52a669bf2efc0a0e70c5e466e2d0d53b4815c6b6f0598438248c"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.1/calyptia-cli_1.18.1_linux_amd64.tar.gz"
      sha256 "465a27a8598e8a90673dc19f89d33be497ef99111223bdd998ca00402ac2bfa2"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.1/calyptia-cli_1.18.1_linux_arm64.tar.gz"
      sha256 "6485124f52a3eea7a7b2978b0d643062b39a7dfd79ab974ad9d39ad6219e8cb6"

      def install
        bin.install "calyptia"
      end
    end
  end

  test do
    system "#{bin}/calyptia version"
  end
end
