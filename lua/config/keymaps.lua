-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add mapping support with calling vim.keymap.set
local map = vim.keymap.set

-- Flutter Tools
map("n", "<leader>F", function()
  require("telescope").extensions.flutter.commands()
end, { desc = "Flutter Tools" })

-- Show help in normal mode
map("n", "<tab>", function()
  vim.lsp.buf.hover()
end, { desc = "Show code line info" })
