# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bwca < Formula
  desc "Bitwarden has created a SERVE mode for the CLI tool, this CLI interacts with that REST API on localhost"
  homepage "https://github.com/maahsome/bwca/"
  version "0.0.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/bwca/releases/download/v0.0.18/bwca_darwin_amd64.tar.gz"
      sha256 "ae3a3a80eda2504f6cb1fce752be1ecb825988b8a4bf01f6d6d16c7556451a00"

      def install
        bin.install "bwca"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/bwca/releases/download/v0.0.18/bwca_darwin_arm64.tar.gz"
      sha256 "508183ec4efccaac87a2be9b254e25c099c037b97cc2275c1a9a6cee577ce56e"

      def install
        bin.install "bwca"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/bwca/releases/download/v0.0.18/bwca_linux_arm64.tar.gz"
      sha256 "2507f5fb1cb3366eddb0680607c24d646fc2f406daa25da1b2fb8be4e96f66d5"

      def install
        bin.install "bwca"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/bwca/releases/download/v0.0.18/bwca_linux_amd64.tar.gz"
      sha256 "90aedfac267b05707e6351a2dd9a2c48c9399c214d36075361f7f2d3c50f736e"

      def install
        bin.install "bwca"
      end
    end
  end

  test do
    system "#{bin}/bwca --help"
  end
end
