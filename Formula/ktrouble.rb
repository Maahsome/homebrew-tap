# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.8/ktrouble_darwin_arm64.tar.gz"
      sha256 "d624819123f99b39c67c570ba45c37eae158c69a11601971cac56912ae330d79"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.8/ktrouble_darwin_amd64.tar.gz"
      sha256 "1c944f92194a9f991c2096dee47bd9aa8884a763e38ac2e181a30c7668076747"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.8/ktrouble_linux_amd64.tar.gz"
      sha256 "ea10172a64156dc27e0dd697faf8913ff25e0e3799f6fd6affd045e26cf9f837"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.8/ktrouble_linux_arm64.tar.gz"
      sha256 "ce500b0a35acdf70a6fd9d059e86b72acbbfc0cc29e497836ae35a3900063330"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
