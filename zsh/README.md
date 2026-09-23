# ZSH-STARTER 

![GitHub stars](https://img.shields.io/github/stars/6aru/zsh-starter?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/6aru/zsh-starter?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/6aru/zsh-starter?style=for-the-badge)
![Zsh](https://img.shields.io/badge/ZSH-Stable-blue?style=for-the-badge)

A modern Beginner/Pro ZSH configuration built around:

* Powerlevel10k
* Zinit
* zsh-autosuggestions
* zsh-syntax-highlighting
* zsh-completions
* fzf-tab
* zoxide
* eza
* chafa
* bat

Fast, clean, beginner friendly and suitable for Debian, Arch and other Linux distributions.

---

## Preview
[Preview](https://github.com/user-attachments/assets/c206a328-099e-4eca-934f-b51e971f9a40)

---

## Features

* Self-installing Zinit
* Powerlevel10k prompt
* Git integration
* Smart command suggestions
* Syntax highlighting
* Fuzzy completions
* Fast directory jumping with Zoxide
* Beautiful file listings with Eza
* Better cat with Bat
* Useful aliases

---

## Requirements

### Debian / Ubuntu

```bash
sudo apt install -y \
zsh git curl wget \
fzf zoxide eza chafa unzip p7zip-full tar bat \
ripgrep fd-find
```

### Arch Linux

```bash
sudo pacman -S \
zsh git curl wget \
fzf zoxide eza chafa unzip p7zip tar bat \
ripgrep fd
```

### Fedora

```bash
sudo dnf install \
zsh git curl wget \
fzf zoxide eza chafa unzip p7zip p7zip-plugins tar bat \
ripgrep fd-find
```

---

## Installation

### Backup Existing Configuration

```bash
cp ~/.zshrc ~/.zshrc.backup
```

### Clone

```bash
git clone https://github.com/6aru/zsh-starter.git
```

### Install

```bash
cp zsh-starter/.zshrc ~/.zshrc
```

### Set ZSH as Default Shell

```bash
chsh -s $(which zsh)
```

Log out and back in.

---

## Aliases

| Command | Description                      |
| ------- | -------------------------------- |
| ls      | Eza with icons                   |
| ll      | Detailed listing with Git status |
| la      | Show hidden files                |
| lt      | Tree view                        |
| c       | Clear terminal                   |
| vim     | Launch Neovim                    |
| update  | Update Debian packages           |
| cat     | Bat replacement                  |
| ..      | Go up one directory              |
| ...     | Go up two directories            |
| ....    | Go up three directories          |

---

## Included Plugins

| Plugin                  | Purpose               |
| ----------------------- | --------------------- |
| Powerlevel10k           | Prompt                |
| zsh-autosuggestions     | Command suggestions   |
| zsh-syntax-highlighting | Syntax highlighting   |
| zsh-completions         | Extra completions     |
| fzf-tab                 | Fuzzy completion menu |
| zsh-you-should-use      | Alias recommendations |

---

## Tools

## ⚡ Zoxide

Navigate your filesystem instantly without typing long paths.

| Command | Action |
|---------|--------|
| `cd Downloads` | 📁 Jump to the Downloads directory |
| `cd down` | ⚡ Jump using a partial directory name |
| `cd proj` | 🚀 Jump to your Projects directory (or any matching folder) |

> 💡 Zoxide ranks directories based on frequency and recency, making navigation faster over time.

## 🔍 FZF Keybindings

Quickly navigate your system with these built-in FZF shortcuts.

| Shortcut | Description |
|:---------:|------------|
| <kbd>Ctrl</kbd> + <kbd>R</kbd> | 🔄 Search through your command history |
| <kbd>Ctrl</kbd> + <kbd>T</kbd> | 📂 Fuzzy search and insert files |
| <kbd>Alt</kbd> + <kbd>C</kbd> | 📁 Fuzzy search and jump to directories |

### Examples

#### 🔄 Search Command History
```bash
Ctrl + R
```

#### 📂 Search Files
```bash
Ctrl + T
```

#### 📁 Jump to a Directory
```bash
Alt + C
```

## 📂 Eza

A modern replacement for `ls` with icons, Git integration, and a cleaner output.

| Command | Action |
|---------|--------|
| `ls` | 📁 Beautiful directory listing |
| `ll` | 📄 Detailed list with permissions, size, and date |
| `la` | 👀 Show hidden files and directories |
| `lt` | 🌳 Display the directory tree |
> ✨ Powered by **eza** for faster, cleaner, and more informative file listings.

## 📖 Better File Preview

This configuration replaces the traditional `cat` with a beautiful, scrollable file viewer powered by **bat** and **fzf**.

### Features

- 🎨 Syntax highlighting
- 📄 Line numbers
- 🔍 Scrollable preview
- 🌈 Gruvbox themed output
- ⌨️ Press **Esc** to exit

### Examples

View any file:

```bash
cat ~/.zshrc
```
Instead of dumping plain text into the terminal, files open in a clean interactive viewer.

> 💡 **Tip:** Works great for configuration files, source code, logs, and Markdown documents.

## 📦 Archive Preview

Preview archive contents directly from **FZF** without extracting them.

### Supported Formats
- 📦 ZIP
- 📦 7z
- 📦 TAR
- 📦 TAR.GZ
- 📦 TGZ
- 📦 TAR.XZ
Images inside archives are displayed using **Chafa** directly in the terminal.
> ✨ Browse archive contents instantly with **Ctrl + T** or **FZF**.

---
If this project helped you, please consider giving it a ⭐ on GitHub.
