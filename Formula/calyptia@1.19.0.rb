# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1190 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.0/calyptia-cli_1.19.0_darwin_all.tar.gz"
    sha256 "2a2629a710773ed68f3573bdde2959c8bdfb251f31fd718667c1f4dc8a06cd0e"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.0/calyptia-cli_1.19.0_linux_amd64.tar.gz"
        sha256 "defc859030992e48f39e7c62a1a39e47fb18cbb66801c3eb50db819dbecff5c7"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.19.0/calyptia-cli_1.19.0_linux_arm64.tar.gz"
        sha256 "59c466f78d8d4250f091d765af0e123130254cab88aa4cdfe1ef48ca9335a705"

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