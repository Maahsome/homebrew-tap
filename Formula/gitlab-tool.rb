# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTool < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/gitlab-tool/"
  version "0.0.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.3/gitlab-tool_darwin_amd64.tar.gz"
      sha256 "495438db64388d98ad71a6aca2744791d2352fb957d5b3ed59a910fa37f5019e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.3/gitlab-tool_linux_amd64.tar.gz"
      sha256 "668573ecb6a01aa1668d54d87c67d1b58db5b93d6568ad4ed65110bf1b4025f1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.3/gitlab-tool_linux_arm64.tar.gz"
      sha256 "4c39e75a9735727832fe3a93ae0d963e716f323738b08036abc3cbe906d6600e"
    end
  end

  def install
    bin.install "gitlab-tool"
  end

  test do
    system "#{bin}/gitlab-tool --help"
  end
end
