# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.9/ktrouble_darwin_amd64.tar.gz"
      sha256 "211720d7f5fe1cec1929b36e57b27b9ee76c71728299eab8118ba45b5992d71c"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.9/ktrouble_darwin_arm64.tar.gz"
      sha256 "abbf1d6252b5530dc78d759a7ef8c1b423a66d52095397627dbfc97ee6df047a"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.9/ktrouble_linux_arm64.tar.gz"
      sha256 "a563793abea5280ee959439ed7486a1c60700fd4d195ce78de80cc69f594f40c"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.9/ktrouble_linux_amd64.tar.gz"
      sha256 "7ac42dc4378dc6a9693b12db19e0eb4eb493e202b1f77229e5d6f5beccf5c309"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
