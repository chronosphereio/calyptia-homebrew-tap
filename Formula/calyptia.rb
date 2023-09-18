# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calyptia < Formula
  desc "Calyptia Cloud CLI"
  homepage "https://github.com/calyptia/cli"
  version "1.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/calyptia/cli/releases/download/v1.7.3/cli_1.7.3_darwin_arm64.tar.gz"
      sha256 "8e4720fe32073582fa51f34fdd1a1bacdbbf5efc6a7e9376d44e908a66e31219"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/calyptia/cli/releases/download/v1.7.3/cli_1.7.3_darwin_amd64.tar.gz"
      sha256 "9d8e25c8c2e95aa3da799e3caeb780ce010a7e64c5a8547d57f8d6f15d5849c3"

      def install
        bin.install "calyptia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/calyptia/cli/releases/download/v1.7.3/cli_1.7.3_linux_amd64.tar.gz"
      sha256 "b1d65bcaa7fbedc6d87f321625f8f1d194a204d28bf9be69317634547b2e1421"

      def install
        bin.install "calyptia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/calyptia/cli/releases/download/v1.7.3/cli_1.7.3_linux_arm64.tar.gz"
      sha256 "0fbe3bddc53b18bb492ae29352cc8b6f382d86a3ed6a9a3a320587c5fd8199e3"

      def install
        bin.install "calyptia"
      end
    end
  end
end
