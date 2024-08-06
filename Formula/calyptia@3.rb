# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.2.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.1_darwin_all.tar.gz"
    sha256 "d30b88244b971f87aeb3beffd3f44a45f7a4eaa6207d6a1d87aa3565f507928b"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.1_linux_amd64.tar.gz"
        sha256 "005fdeda79c60d73c60abe77bfb789f85ba32c2a1135deaea2d5bf3eba7041fe"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.2.1/calyptia-cli_3.2.1_linux_arm64.tar.gz"
        sha256 "09f9557de35162eb6b784abd22c87b74d2b309e4da5b8726922afd8939413619"

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
