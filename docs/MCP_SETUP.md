# MCP Setup for All VS Code Instances

This repository includes configuration to automatically install and sync Model Context Protocol (MCP) servers across all your VS Code instances.

## 🌐 Automatic Sync Across All Computers

### Prerequisites
- VS Code with GitHub Copilot extension installed
- Node.js and npm installed on each machine
- GitHub account (already have this!)

### Setup Instructions

#### 1️⃣ Enable VS Code Settings Sync

On **each computer** where you use VS Code:

1. Open VS Code Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on Mac)
2. Type: `Settings Sync: Turn On`
3. Sign in with your GitHub account (`Devf7en`)
4. Select what to sync (recommended: **Settings**, **Extensions**, **Keyboard Shortcuts**)

#### 2️⃣ Add MCP Configuration to User Settings

**Option A: Automatic (Recommended)**

On your **primary machine**:

```bash
# Merge MCP settings into your VS Code user settings
cat .vscode/settings-sync-template.json >> ~/.config/Code/User/settings.json
```

Or on **Windows**:
```powershell
Get-Content .vscode\settings-sync-template.json | Add-Content $env:APPDATA\Code\User\settings.json
```

Or on **macOS**:
```bash
cat .vscode/settings-sync-template.json >> ~/Library/Application\ Support/Code/User/settings.json
```

**Option B: Manual**

1. Open VS Code Settings (JSON) via Command Palette: `Preferences: Open User Settings (JSON)`
2. Copy the entire contents of `.vscode/settings-sync-template.json`
3. Paste into your user `settings.json`

#### 3️⃣ Install MCP Packages

**On each new machine/container**, run:

```bash
bash .vscode/install-mcps.sh
```

Or install them manually:
```bash
npm install -g @modelcontextprotocol/server-brave-search
npm install -g @modelcontextprotocol/server-sequential-thinking
npm install -g @modelcontextprotocol/server-git
npm install -g @modelcontextprotocol/server-memory
npm install -g @modelcontextprotocol/server-sqlite
npm install -g @modelcontextprotocol/server-postgres
npm install -g @modelcontextprotocol/server-docker
npm install -g @modelcontextprotocol/server-puppeteer
npm install -g @modelcontextprotocol/server-slack
npm install -g @modelcontextprotocol/server-gdrive
npm install -g @modelcontextprotocol/server-google-maps
```

**Note**: Using `npx -y` in the settings template means MCPs will auto-install on first use, but pre-installing is faster.

## 🚀 Installed MCPs

### Core Tools
- **Brave Search** - Web search from within VS Code
- **Sequential Thinking** - Enhanced problem-solving reasoning
- **Git** - Advanced git operations
- **Memory** - Persistent context across sessions

### Databases
- **SQLite** - Local database operations
- **PostgreSQL** - Postgres database access

### Developer Tools
- **Docker** - Container management
- **Puppeteer** - Browser automation

### Collaboration
- **Slack** - Team communication integration

### Cloud Services
- **Google Drive** - Cloud document access
- **Google Maps** - Location services

## 🔄 How Sync Works

1. **Settings Sync** syncs your `settings.json` MCP configuration across all VS Code instances
2. **npx -y** flag auto-downloads MCPs on first use (no manual install needed)
3. **Devcontainer postCreateCommand** auto-installs MCPs when containers rebuild
4. **install-mcps.sh** provides manual installation option for local machines

## ✅ Verify Installation

Check installed MCPs:
```bash
npm list -g --depth=0 | grep modelcontextprotocol
```

Test an MCP:
1. Open GitHub Copilot Chat in VS Code
2. Type: `@workspace` or use any MCP feature
3. MCPs should be available in the context menu

## 🔧 Troubleshooting

**MCPs not showing up?**
- Restart VS Code after enabling Settings Sync
- Check that Settings Sync is active: Look for sync icon in bottom status bar
- Verify GitHub Copilot extension is installed and active
- Run: `bash .vscode/install-mcps.sh` to manually install

**Sync not working across machines?**
- Ensure you're signed into the same GitHub account on all machines
- Check Settings Sync is enabled on each machine
- Force sync: Command Palette → `Settings Sync: Sync Now`

**Permission errors during npm install?**
```bash
# Fix npm permissions (Linux/Mac)
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

## 📝 Updating MCPs

Update all MCPs to latest versions:
```bash
npm update -g @modelcontextprotocol/server-*
```

Or re-run the installation script:
```bash
bash .vscode/install-mcps.sh
```

---

**Once Settings Sync is enabled with your GitHub account, your MCP configuration will automatically sync to all your VS Code instances! 🎉**
