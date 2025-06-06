# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT340 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.4.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.0/calyptia-cli_3.4.0_darwin_all.tar.gz"
    sha256 "558d158341288b367fc534e276e1171d6f7082e84b1914f2bb9a7ba83c43c888"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.0/calyptia-cli_3.4.0_linux_amd64.tar.gz"
        sha256 "155af93a4f0c279f4284ee12b3adf2ae80e795305c910ddfb00d52329747f9cc"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.4.0/calyptia-cli_3.4.0_linux_arm64.tar.gz"
        sha256 "58ddefbef41ca9912fc97c34c5accbad1a8099b06694adf300c4a5e8b8dad8ed"

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
