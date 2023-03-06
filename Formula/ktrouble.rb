# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.17/ktrouble_darwin_arm64.tar.gz"
      sha256 "e214c76c2a7fb02e92df9fc115f802839b8b33292ca724650e1f086e2118ca5b"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.17/ktrouble_darwin_amd64.tar.gz"
      sha256 "abbe7e91830facddf44f40ac138163b1167b6a3a5724b0166ab73adb66c80fd2"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.17/ktrouble_linux_arm64.tar.gz"
      sha256 "aa629aaf3d883814da3bea865744dd36a42792760e57c442e2b02d141d24630a"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.17/ktrouble_linux_amd64.tar.gz"
      sha256 "9872290e65da026dca481d580fedc8939f2d157c27bcdccbed63e44adaa25ebb"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
