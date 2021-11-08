# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChangelogPr < Formula
  desc "CLI tool for building changelog from PR descriptions based on a template"
  homepage "https://github.com/maahsome/changelog-pr/"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maahsome/changelog-pr/releases/download/v0.1.0/changelog-pr_darwin_amd64.tar.gz"
    sha256 "68cacdfd521ec164130410704c86d1e1265814ff3120f24c9712f842f62f5d90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maahsome/changelog-pr/releases/download/v0.1.0/changelog-pr_linux_amd64.tar.gz"
    sha256 "97e0b0c80ef137c17651ac5d7d84972bd4918b17fbc2845d1a5179a39b16a46b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/maahsome/changelog-pr/releases/download/v0.1.0/changelog-pr_linux_arm64.tar.gz"
    sha256 "9570522da9bc8ad651e1d2df42e1c4c4033f47b8a14936d533e2967371155e7c"
  end

  def install
    bin.install "changelog-pr"
  end

  test do
    system "#{bin}/changelog-pr --help"
  end
end
