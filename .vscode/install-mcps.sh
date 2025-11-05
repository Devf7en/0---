#!/bin/bash
# MCP Installation Script for All Workspaces
# Run this script on any machine to install all recommended MCPs globally

set -e

echo "🚀 Installing MCP servers globally..."

# Core MCPs
echo "📦 Installing core MCPs..."
npm install -g @modelcontextprotocol/server-brave-search
npm install -g @modelcontextprotocol/server-sequential-thinking
npm install -g @modelcontextprotocol/server-git
npm install -g @modelcontextprotocol/server-memory

# Database MCPs
echo "🗄️  Installing database MCPs..."
npm install -g @modelcontextprotocol/server-sqlite
npm install -g @modelcontextprotocol/server-postgres

# Developer Tool MCPs
echo "🛠️  Installing developer tool MCPs..."
npm install -g @modelcontextprotocol/server-puppeteer
npm install -g @modelcontextprotocol/server-docker

# Collaboration MCPs
echo "💬 Installing collaboration MCPs..."
npm install -g @modelcontextprotocol/server-slack

# Cloud Service MCPs
echo "☁️  Installing cloud service MCPs..."
npm install -g @modelcontextprotocol/server-gdrive
npm install -g @modelcontextprotocol/server-google-maps

echo "✅ All MCP servers installed successfully!"
echo ""
echo "📝 Next steps:"
echo "1. Make sure VS Code Settings Sync is enabled (Ctrl+Shift+P -> 'Settings Sync: Turn On')"
echo "2. Sign in with your GitHub account"
echo "3. Your MCP configurations will sync across all machines"
echo ""
echo "🔧 To verify installations, run: npx --version && npm list -g --depth=0 | grep modelcontextprotocol"
