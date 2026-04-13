# DojoGenesis Homebrew Tap

Official Homebrew tap for [DojoGenesis](https://github.com/DojoGenesis) tools. Provides pre-built binaries for macOS and Linux.

## Install

```bash
brew install DojoGenesis/tap/dojo
```

That's it. No manual binary downloads, no PATH edits.

## Available Formulae

| Formula | Description | Version |
|---------|-------------|--------|
| `dojo` | Self-hosted agentic AI CLI — chat, skills, and gateway integration | v1.0.0 |

## What `dojo` Provides

The `dojo` CLI connects to a self-hosted [AgenticGateway](https://github.com/DojoGenesis/gateway) and exposes:

- `/chat` — streaming AI chat across multiple providers (Anthropic, OpenAI, Mistral, Ollama)
- `/skill invoke <name>` — run methodology skills from the Dojo library
- `/skill search <query>` — search 683+ skills semantically
- `/skill package-all` — push all local skills to the gateway CAS
- `/code` — read, diff, and gate code pipelines
- Plugin installer with support for monorepo and subdirectory URLs

Default gateway port: **7340** (`localhost:7340`).

## Supported Platforms

| Platform | Architecture | Supported |
|----------|-------------|----------|
| macOS | Apple Silicon (arm64) | Yes |
| macOS | Intel (amd64) | Yes |
| Linux | amd64 | Yes |
| Linux | arm64 | Yes |

## Updating

```bash
brew update && brew upgrade dojo
```

## Uninstalling

```bash
brew uninstall dojo
brew untap DojoGenesis/tap  # optional
```

## Source

- CLI source: [DojoGenesis/cli](https://github.com/DojoGenesis/cli)
- Gateway source: [DojoGenesis/gateway](https://github.com/DojoGenesis/gateway)
- MCP server: [DojoGenesis/mcp](https://github.com/DojoGenesis/mcp)
- Plugins: [DojoGenesis/plugins](https://github.com/DojoGenesis/plugins)

## License

MIT
