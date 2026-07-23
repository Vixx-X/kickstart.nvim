-- GitHub issues and pull requests from inside Neovim, e.g. `:Octo pr list`.
--
-- Requires the `gh` CLI to be installed and authenticated (`gh auth login`).
-- `plenary.nvim` and `telescope.nvim` are already installed by `init.lua`.
vim.pack.add { 'https://github.com/pwntester/octo.nvim' }

require('octo').setup {}
