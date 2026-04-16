# typed: false
# frozen_string_literal: true

class AgenticGateway < Formula
  desc "Composable agentic AI runtime — multi-provider LLM routing, WASM sandbox, DAG orchestration"
  homepage "https://github.com/DojoGenesis/gateway"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DojoGenesis/gateway/releases/download/v3.0.0/agentic-gateway_3.0.0_darwin_amd64.tar.gz"
      sha256 "c408f2f9a0a0b4c90ce71c8869a67b31fc61b0791f1f44f9b15a82e8272044ca"
    end
    on_arm do
      url "https://github.com/DojoGenesis/gateway/releases/download/v3.0.0/agentic-gateway_3.0.0_darwin_arm64.tar.gz"
      sha256 "45e05ebe78775ac2cd5ee415dfde782417a0752ed4017e64a0ca15e1bd3e975f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DojoGenesis/gateway/releases/download/v3.0.0/agentic-gateway_3.0.0_linux_amd64.tar.gz"
      sha256 "6e35297714bb13bef818ac96ff8c1247e22323a1fff8f56fbad6156b1f1fa68d"
    end
    on_arm do
      url "https://github.com/DojoGenesis/gateway/releases/download/v3.0.0/agentic-gateway_3.0.0_linux_arm64.tar.gz"
      sha256 "c472e497eb457fa48693cd666e1f534cdc196f1edee9472572d0ab25e20842a3"
    end
  end

  def install
    bin.install "agentic-gateway"
  end

  test do
    system "#{bin}/agentic-gateway", "--version"
  end
end
