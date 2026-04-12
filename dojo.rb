# typed: false
# frozen_string_literal: true

class Dojo < Formula
  desc "Self-hosted agentic AI CLI powered by the Dojo Genesis gateway"
  homepage "https://github.com/DojoGenesis/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DojoGenesis/cli/releases/download/v1.0.0/dojo_1.0.0_darwin_amd64.tar.gz"
      sha256 "d59c20a964de80bd42a4b2092d48f1e39883a3ae2b6f09bdc4ab9ae11e2d0897"
    end
    on_arm do
      url "https://github.com/DojoGenesis/cli/releases/download/v1.0.0/dojo_1.0.0_darwin_arm64.tar.gz"
      sha256 "62f0f9b2d6e93f2dbb0851c6bea0b119a5c37c9a3c559040845a496e89e3039e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DojoGenesis/cli/releases/download/v1.0.0/dojo_1.0.0_linux_amd64.tar.gz"
      sha256 "538daa74019836a799252a0a12517245f82d6808b84c6fb12104b57ff52e1f2c"
    end
    on_arm do
      url "https://github.com/DojoGenesis/cli/releases/download/v1.0.0/dojo_1.0.0_linux_arm64.tar.gz"
      sha256 "833cc19dd4acc1c9a5b8dcabd7eca96944e2ceaebde66575ce7bc7869748148d"
    end
  end

  def install
    bin.install "dojo"
  end

  test do
    system "#{bin}/dojo", "--version"
  end
end
