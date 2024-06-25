# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1203 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.20.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.3/calyptia-cli_1.20.3_darwin_all.tar.gz"
    sha256 "db0c948893f566a92f3a36ab45b3e2ab23f467032016b2971921daf163999366"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.3/calyptia-cli_1.20.3_linux_amd64.tar.gz"
        sha256 "21406e5c503e89e52c84f16fe9e45e1272117cb5b6f370bc86508f71834d18a2"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.3/calyptia-cli_1.20.3_linux_arm64.tar.gz"
        sha256 "1da928873a1306daa1d8944acc07b987a66d093bea9b2914868b95b1ad469b7c"

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