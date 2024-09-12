# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT332 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.3.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.2/calyptia-cli_3.3.2_darwin_all.tar.gz"
    sha256 "f235362f034ad903dd7399fac4cc9420a1f40eb50718140884c83d1e7bd49d48"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.2/calyptia-cli_3.3.2_linux_amd64.tar.gz"
        sha256 "e9d1d69e1e0cf5012f2c1194993845fa7a5aaa0ccbc2b47f1e879663b13aa2f1"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.3.2/calyptia-cli_3.3.2_linux_arm64.tar.gz"
        sha256 "447c6e9ba5a0cc58fd80d8fda031c277e94583c346067ffa63a20b97dee7dd62"

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