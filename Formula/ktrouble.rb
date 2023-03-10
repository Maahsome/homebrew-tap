# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktrouble < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/ktrouble/"
  version "0.0.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.20/ktrouble_darwin_amd64.tar.gz"
      sha256 "9118fa99e3a2c7a09cb5f410543a867a09080f273b28dc051d6c3c5d28db1913"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.20/ktrouble_darwin_arm64.tar.gz"
      sha256 "220b2076e58b4bf0aa7c70c897033e54aa6cfd798deb113c37659b50497449f0"

      def install
        bin.install "ktrouble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.20/ktrouble_linux_amd64.tar.gz"
      sha256 "23277eaee47b7f13b8275943e15221ab7ba8a27b1e356061093c1eb28e5620f5"

      def install
        bin.install "ktrouble"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/ktrouble/releases/download/v0.0.20/ktrouble_linux_arm64.tar.gz"
      sha256 "ee2d1684b75f96e83276c6cf27134425b372f89bc51d4458dae07adfdfbb7ff0"

      def install
        bin.install "ktrouble"
      end
    end
  end

  test do
    system "#{bin}/ktrouble --help"
  end
end
