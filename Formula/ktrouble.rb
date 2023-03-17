# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.24/ktrouble_darwin_amd64.tar.gz"
      sha256 "2db329be8f133f184346d3cc4318f09446b602b06f3460773f453d86bb3af5b8"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.24/ktrouble_darwin_arm64.tar.gz"
      sha256 "f1cb8d3299af88c78c241f32674cba1f540f1b0914e983ecca687496bf9f1cee"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.24/ktrouble_linux_arm64.tar.gz"
      sha256 "2b4d55025c166ec67656e79a9859a89331eef9100bd2f271fe06aca9a1397c9d"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.24/ktrouble_linux_amd64.tar.gz"
      sha256 "522a4fb1d8763738027d17fd5b0e844a4b675e1ad6e55dd95fc322b895213b36"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
