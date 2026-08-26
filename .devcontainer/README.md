# Neovim Config Devcontainer

This devcontainer provides a small Linux environment for testing this Neovim configuration.

It uses the Microsoft Ubuntu 24.04 devcontainer base image and installs Neovim through the `ghcr.io/devcontainers-extra/features/neovim-homebrew:1` feature so the container gets a current Homebrew build rather than the older version commonly available through Linux package repositories.

On creation, `.devcontainer/setup.sh` links the repository into the container as:

```text
~/.config/nvim -> ${containerWorkspaceFolder}
```

Open Neovim inside the container with:

```bash
nvim
```
