# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTool < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/gitlab-tool/"
  version "0.0.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.2/gitlab-tool_darwin_amd64.tar.gz"
      sha256 "311a37e8b24c6e4fddf05fced29ffff4f0c90e50ede37611a183ffd8662f2245"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.2/gitlab-tool_linux_amd64.tar.gz"
      sha256 "d84ab149583d6936e63407733d9c28a67c9dc8a1051a7e625fa0c9e179e3b31b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.2/gitlab-tool_linux_arm64.tar.gz"
      sha256 "b095d7a84bc940d11c3ee0327f85cb705edf9076f465d02ee666cc5333ffbb0c"
    end
  end

  def install
    bin.install "gitlab-tool"
  end

  test do
    system "#{bin}/gitlab-tool --help"
  end
end
