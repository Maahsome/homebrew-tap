# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTool < Formula
  desc "CLI tool to reduce reliance on GUI interactions, initially driven by wanting to grep through TRACE output of pipeline jobs"
  homepage "https://github.com/maahsome/gitlab-tool/"
  version "0.0.4"

  on_macos do
    url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.4/gitlab-tool_darwin_amd64.tar.gz"
    sha256 "68f030a4ff5127db5ef844969ea226e3c65cd593fcb45c84c865d54c9547f785"

    def install
      bin.install "gitlab-tool"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the GitlabTool
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.4/gitlab-tool_linux_arm64.tar.gz"
      sha256 "ca5b6402d8d3f82d86738d303b26ec6354e537d54a58856df3a12170c1625de7"

      def install
        bin.install "gitlab-tool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maahsome/gitlab-tool/releases/download/v0.0.4/gitlab-tool_linux_amd64.tar.gz"
      sha256 "5a09d8f6109f952c94f1f60ad10ad71846bff722a1d754ba3a2aa18e7708c43f"

      def install
        bin.install "gitlab-tool"
      end
    end
  end

  test do
    system "#{bin}/gitlab-tool --help"
  end
end
