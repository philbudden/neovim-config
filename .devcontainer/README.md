# Neovim Config Devcontainer

This devcontainer provides a small Linux environment for testing this Neovim configuration.

It uses the Microsoft Ubuntu devcontainer base image and installs Neovim through the `ghcr.io/devcontainers-extra/features/neovim-homebrew:1` feature so the container gets a current Homebrew build rather than the older version commonly available through Linux package repositories.

On creation, the repository is linked into the container as:

```text
~/.config/nvim -> ${containerWorkspaceFolder}
```

Open Neovim inside the container with:

```bash
nvim
```
