# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.14/ktrouble_darwin_arm64.tar.gz"
      sha256 "9132bd8e027dd873afea2647c4666eee3834b054cea18eefdd409f5abfca5841"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.14/ktrouble_darwin_amd64.tar.gz"
      sha256 "775d02f8c0d96e59ac85169cd53d092d45fc73083369828d798d6fe00b11d8e3"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.14/ktrouble_linux_arm64.tar.gz"
      sha256 "8aade0a8d04957073f05e255218272e4c736a26e2999daf51056d9c3fdc70dae"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.14/ktrouble_linux_amd64.tar.gz"
      sha256 "9ac6c4c6401366d143b6a70a57fc467e279cb9389304434d89662975ad6b83df"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
