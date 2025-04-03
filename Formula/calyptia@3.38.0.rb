# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3380 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.38.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.38.0/calyptia-cli_3.38.0_darwin_all.tar.gz"
    sha256 "f71d305ccb43bdfe60b0f4588a356b54d9e73c1391f8765a5d72906760d5ac7e"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.38.0/calyptia-cli_3.38.0_linux_amd64.tar.gz"
        sha256 "2338a8c9db8e120b8d0dc1092a85c7614f287a2999747ef2612b377e82970704"

        def install
          bin.install "calyptia"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.38.0/calyptia-cli_3.38.0_linux_arm64.tar.gz"
        sha256 "9279885ebd051ec72e2dec47a6f9c5c12416e980056e8beb11aacd1b9b97560f"

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
