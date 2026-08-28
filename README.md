# Neovim Config

Personal Neovim configuration for terminal-native development on macOS, WSL2, and Linux devcontainers.

This repository is maintained as an independent configuration and does not preserve a split between upstream defaults and local customisations.

## Layout

```text
.
├── init.lua
├── lua/
│   └── nvim_config/
│       ├── plugins.lua
│       └── health.lua
└── .devcontainer/
    ├── Dockerfile
    ├── devcontainer.json
    └── setup.sh
```

`init.lua` owns editor-wide options, basic keymaps and basic autocommands. `lua/nvim_config/plugins.lua` owns `lazy.nvim` bootstrap, plugin declarations and plugin-specific configuration.

## Install

Clone this repository to the normal Neovim config path:

```bash
git clone git@github.com:philbudden/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

Then start Neovim:

```bash
nvim
```

Plugins are managed with `lazy.nvim`. To open the package manager:

```vim
:Lazy
```

To fetch plugin updates:

```vim
:Lazy update
```

## GitHub Copilot inline completions

Neovim uses GitHub's official `github/copilot.vim` plugin for ordinary inline suggestions only. This is separate from the GitHub Copilot CLI terminal, which remains the agentic coding interface.

`blink.cmp` retains `<Tab>` for normal completion and snippet navigation. In Insert mode, use:

- `Ctrl-g Ctrl-a` — accept the current Copilot suggestion
- `Ctrl-g Ctrl-d` — dismiss it
- `Ctrl-g Ctrl-n` / `Ctrl-g Ctrl-p` — next / previous suggestion

The plugin requires Node.js 18 or later; the supplied devcontainer installs Node.js 22. In a new environment, run `:Copilot setup` and complete its GitHub device-login flow; `:Copilot status` then reports whether inline suggestions are ready. The plugin’s documented setup is separate from Copilot CLI and does not document reuse of `gh` or forwarded environment-token credentials.

## Health Check

Run:

```vim
:checkhealth nvim_config
```

## Devcontainer

The `.devcontainer/` folder provides a small Microsoft Ubuntu 24.04 `linux/amd64` container for testing this configuration with a Homebrew-installed Neovim.

Inside the container, `.devcontainer/setup.sh` links the checked-out repository to:

```text
~/.config/nvim
```

This lets the repository be opened and tested directly without installing it over the host config.

## Dotfiles Bootstrap

The separate `~/Developer/dotfiles` repository is responsible for installing this config in new devcontainers. This repo remains responsible only for Neovim itself.
