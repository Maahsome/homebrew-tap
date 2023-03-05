# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.13/ktrouble_darwin_arm64.tar.gz"
      sha256 "bb5f3744c15683b8ecf79698efdc3fcf76fcb4dc47db99d29417e85068dc73ef"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.13/ktrouble_darwin_amd64.tar.gz"
      sha256 "fe13dd2a12f2a710ae48c6f629d7e268b0991f3e861bceffeb5eebc3a9b73f51"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.13/ktrouble_linux_amd64.tar.gz"
      sha256 "d8443fb300af54337521738b250317556bdc753af9b5376c96f5419f2b0aa4d9"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.13/ktrouble_linux_arm64.tar.gz"
      sha256 "5d0f2c2fe0f7cb443d80ceb1d0569efba8a816eda262c6f9ae2b0ef42c62f9bb"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
