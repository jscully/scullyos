# ⚡ ScullyOS

**ScullyOS** is a custom, trimmed-down Linux workstation environment engineered for modern software development, containerization, and high-performance terminal productivity.

Built upon Basecamp's Omakub, **ScullyOS** strips out unnecessary bloat and focuses on a streamlined personal stack: Brave Browser, VS Code, Alacritty, Obsidian, Steam Link, Docker, LazyGit, LazyDocker, Zellij, and Mise.

---

## 🚀 One-Line Installation

For fresh Ubuntu 24.04+ installations, install ScullyOS with a single command:

```bash
wget -qO- https://raw.githubusercontent.com/jscully/scullyos/master/boot.sh | bash
```

---

## 🛠️ Installed Applications & Stack

### 🖥️ Desktop Applications
- **Brave Browser**: Fast, privacy-centric browser (replaces Chrome).
- **Visual Studio Code**: Modern code editor with developer extension suite.
- **Alacritty**: High-performance, GPU-accelerated terminal emulator.
- **Obsidian**: Markdown-based local knowledge graph and note-taking.
- **Steam Link**: Low-latency remote gaming streaming from your host PC.
- **Ulauncher**: Fast application launcher (`Super + Space`).
- **Flameshot**: Instant interactive screenshot tool with drawing annotations.
- **LibreOffice**: Complete open-source document and spreadsheet suite.
- **GNOME Tweaks**: Custom desktop appearance and window configuration.

### 🛠️ Terminal Tools & TUIs
- **Docker & Compose v2**: Container runtime & microservice orchestrator.
- **LazyDocker**: Terminal UI for managing containers, images, and live logs.
- **LazyGit**: Terminal UI for git staging, commits, and interactive rebases.
- **Zellij**: Modern workspace multiplexer (tabs, split panes, saved sessions).
- **Mise**: Polyglot version manager for Node.js, Python, Go, Rust, Ruby.
- **Btop**: Live CPU, memory, and process resource monitor.
- **Fastfetch**: System specifications and hardware summary.
- **GitHub CLI (`gh`)**: Manage pull requests, issues, and gists from the terminal.

---

## 🌐 Interactive Command Center & Hotkey Master Reference

ScullyOS includes an offline, single-page **Interactive Command Center Dashboard** with instant search, interactive hotkey modals for every tool, and a global Master Cheat Sheet.

Open it anytime from your terminal:

```bash
scullyos dashboard
```

Or view [`dashboard/index.html`](file:///home/joe-s-imac/Documents/workspaces/omakub/dashboard/index.html) directly in your browser.

> [!NOTE]
> **AI LLM Agent Compatibility**:
> ScullyOS includes [`SYSTEM_MANIFEST.json`](file:///home/joe-s-imac/Documents/workspaces/omakub/SYSTEM_MANIFEST.json) at the root of the repository. AI coding assistants (like Antigravity or ChatGPT) can parse this file to instantly understand your environment layout, hotkeys, runtimes, and tools.

---

## ⌨️ Master Keyboard Shortcuts

| Hotkey | Action | Context |
| :--- | :--- | :--- |
| `Super + Enter` | Open Alacritty Terminal | Global Shortcut |
| `Super + Space` | Open Ulauncher Spotlight | Global Shortcut |
| `Super + W` | Close Active Window | Window Management |
| `Super + Up` | Maximize Window | Window Management |
| `Super + Arrow Keys` | Snap Window to Screen Quadrants / Halves | Tiling Navigation |
| `Super + 1..6` | Switch Workspaces (1 to 6) | Workspace Navigation |
| `Shift + Alt + 1` | Open New Brave Browser Window | Browser |
| `Ctrl + Print` | Screen Capture with Flameshot Annotations | Screenshot Utility |

---

## 📄 License

ScullyOS is released under the [MIT License](https://opensource.org/licenses/MIT).
