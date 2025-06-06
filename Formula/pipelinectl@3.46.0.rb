# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PipelinectlAT3460 < Formula
  desc "Chronosphere Telemetry Pipelines CLI"
  homepage "https://docs.chronosphere.io/pipeline-cli"
  version "3.46.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.46.0/pipelinectl_3.46.0_darwin_all.tar.gz"
    sha256 "f30919c43c4e4f69bcacb632f86938f17676ef0cbfa5487c20da711eb42fd3b0"

    def install
      bin.install "pipelinectl"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.46.0/pipelinectl_3.46.0_linux_amd64.tar.gz"
      sha256 "c0777115b6e731eafbb3f58cc963953cc63c491962df36c17e1ed5e5611cfae7"
      def install
        bin.install "pipelinectl"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/chronosphereio/calyptia-cli/releases/download/v3.46.0/pipelinectl_3.46.0_linux_arm64.tar.gz"
      sha256 "0bf3f4a089ae79d546e59c5313b7a6593782c3e6dbe799e42e2a99dfc59bc4ea"
      def install
        bin.install "pipelinectl"
      end
    end
  end

  test do
    system "#{bin}/pipelinectl version"
  end
end
