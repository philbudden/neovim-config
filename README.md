# Neovim Config

Personal Neovim configuration for terminal-native development on macOS, WSL2, and Linux devcontainers.

This repository is maintained as an independent configuration and does not preserve a split between upstream defaults and local customisations.

## Layout

```text
.
├── init.lua
├── lua/
│   └── nvim_config/
│       └── health.lua
└── .devcontainer/
    ├── Dockerfile
    ├── devcontainer.json
    └── setup.sh
```

`init.lua` is the main configuration. Keep changes there unless a separate module removes real complexity.

## Install

Clone this repository to the normal Neovim config path:

```bash
git clone git@github.com:philbudden/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

Then start Neovim:

```bash
nvim
```

Plugins are managed with Neovim's built-in `vim.pack` support. To inspect plugin state without applying updates:

```vim
:lua vim.pack.update(nil, { offline = true })
```

To fetch plugin updates:

```vim
:lua vim.pack.update()
```

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
