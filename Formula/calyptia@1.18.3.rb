# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT1183 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "1.18.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.3/calyptia-cli_1.18.3_darwin_all.tar.gz"
    sha256 "849b481d6dd7f2abc7bc5f5cd5be69ccd72a1cd9d399547aadc35fd7e4a4c00c"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.3/calyptia-cli_1.18.3_linux_amd64.tar.gz"
        sha256 "985f6e10f683a031f1005963a8101eb3ca29d82bf7bbedb2dcdcdcaf8a16fb89"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v1.18.3/calyptia-cli_1.18.3_linux_arm64.tar.gz"
        sha256 "7a899211093d6e4ad5dde8ec6567e5fc80712755dda316eb55b6e93ac984d426"

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
