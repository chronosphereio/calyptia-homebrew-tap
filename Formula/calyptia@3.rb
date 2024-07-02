# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CalyptiaAT3 < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/chronosphereio/calyptia-cli"
  version "3.0.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.1/calyptia-backend_3.0.1_darwin_all.tar.gz"
    sha256 "c825128f696ce0575e85da5b52ee9659987bc35f869053ae2a5cf89a74056466"

    def install
      bin.install "calyptia"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.1/calyptia-backend_3.0.1_linux_amd64.tar.gz"
        sha256 "c8b78c1edc35641347e2e82774dd1cc610ed106899d2fb97e4dc4f56487e5608"

        def install
          bin.install "calyptia"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chronosphereio/calyptia-backend/releases/download/v3.0.1/calyptia-backend_3.0.1_linux_arm64.tar.gz"
        sha256 "2a1b2b36b18b8210abb1ab7437f1c170537ceee25649b5cbb6e030670f842d40"

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
