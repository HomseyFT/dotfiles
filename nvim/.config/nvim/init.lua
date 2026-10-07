-- Main entrypoint for Neovim config
require("config.lazy")

-- Load the rest of your config (optional)
pcall(require, "config.lsp")
