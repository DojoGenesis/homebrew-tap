# typed: false
# frozen_string_literal: true

class HtmlcraftMcp < Formula
  desc "MCP server for HTMLCraft — AI-powered HTML deliverable creation tools for Claude Code"
  homepage "https://github.com/DojoGenesis/HTMLCraftStudio"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DojoGenesis/HTMLCraftStudio/releases/download/v4.0.0/htmlcraft-mcp_darwin_arm64.tar.gz"
      sha256 "71acb12024d7c0ce48dd44e8a64c5d688842e04b90056d17688db7c9f486c0ee"
    end
  end

  def install
    bin.install "htmlcraft-mcp"
  end

  test do
    assert_predicate bin/"htmlcraft-mcp", :exist?
  end
end
