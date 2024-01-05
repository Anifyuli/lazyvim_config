-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Flutter Tools
local map = vim.keymap.set
map("n", "<leader>F", function()
  require("telescope").extensions.flutter.commands()
end, { desc = "Flutter Tools" })
