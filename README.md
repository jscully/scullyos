# ⚡ ScullyOS

**ScullyOS** is a custom, trimmed-down Linux workstation configuration engineered for high-performance software engineering, containerized web development, and terminal productivity.

Formed from Basecamp's Omakub, **ScullyOS** removes unwanted bloat and focuses on a streamlined stack: Brave Browser, VS Code, Alacritty, Obsidian, Steam Link, Docker, LazyGit, LazyDocker, Zellij, and Mise.

---

## 🚀 One-Line Installation

For fresh Ubuntu 24.04+ installations, run:

```bash
wget -qO- https://raw.githubusercontent.com/jscully/omakub/master/boot.sh | bash
```

---

## 🛠️ Included Stack & Applications

### 🖥️ Desktop Applications
- **Brave Browser**: Fast, privacy-centric browser (replaces Chrome).
- **VS Code**: Modern code editor with extension ecosystem.
- **Alacritty**: High-performance, GPU-accelerated terminal emulator.
- **Obsidian**: Markdown-based local knowledge graph.
- **Steam Link**: Low-latency remote gaming streaming from your host PC.
- **Ulauncher**: Fast application launcher (`Super + Space`).
- **Flameshot**: Instant interactive screenshot tool with drawing annotations.
- **LibreOffice**: Complete open-source document and spreadsheet suite.
- **GNOME Tweaks**: Custom desktop appearance and window configuration.

### 🛠️ Terminal Tools & TUIs
- **Docker & Compose v2**: Industry-standard container runtime.
- **LazyDocker**: Terminal UI for managing containers, images, and live logs.
- **LazyGit**: Terminal UI for git staging, commits, and interactive rebases.
- **Zellij**: Modern workspace multiplexer (tabs, split panes, saved sessions).
- **Mise**: Polyglot version manager for Node.js, Python, Go, Rust, Ruby.
- **Btop**: Live CPU, memory, and process resource monitor.
- **Fastfetch**: System specifications and hardware summary.
- **GitHub CLI (`gh`)**: Manage pull requests, issues, and gists from the terminal.

---

## 🖥️ Interactive HTML Dashboard & AI Agent Manifest

ScullyOS includes a built-in offline **Command Center Dashboard** accessible anytime by running:

```bash
scullyos dashboard
```

Or opening [`dashboard/index.html`](file:///home/joe-s-imac/Documents/workspaces/omakub/dashboard/index.html) in your browser.

> [!NOTE]
> **AI LLM Agent Compatibility**:
> ScullyOS includes [`SYSTEM_MANIFEST.json`](file:///home/joe-s-imac/Documents/workspaces/omakub/SYSTEM_MANIFEST.json) at the root of the repository. Future AI coding assistants (like Antigravity or ChatGPT) can parse this file to instantly understand your environment layout, hotkeys, runtimes, and tools.

---

## ⌨️ Global Keyboard Shortcuts

| Hotkey | Action |
| :--- | :--- |
| `Super + Enter` | Open Alacritty Terminal |
| `Super + Space` | Open Ulauncher Spotlight |
| `Super + Arrow Keys` | Snap windows to half / quadrant screen tiling |

---

## 📄 License

ScullyOS is released under the [MIT License](https://opensource.org/licenses/MIT).
