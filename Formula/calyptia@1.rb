# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.20.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.1/calyptia-cli_1.20.1_darwin_all.tar.gz"
    sha256 "6e840365c04e944779964bec1b70ef73e1488c3bf05096672163bea1b16a8272"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.1/calyptia-cli_1.20.1_linux_amd64.tar.gz"
        sha256 "e4c83edcb22f0024e0026c9399949dbdbe62a4e006190bf87f6d48a85d701193"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.20.1/calyptia-cli_1.20.1_linux_arm64.tar.gz"
        sha256 "040b7fda939ed5c372fcdb035c9426e2f96a15363cde6ffa952f5e5e5c0f4eb0"

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
