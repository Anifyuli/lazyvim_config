-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add mapping support with calling vim.keymap.set
local map = vim.keymap.set
local rmmap = vim.keymap.del
-- Flutter Tools
map("n", "<leader>F", function()
  require("telescope").extensions.flutter.commands()
end, { desc = "Flutter Tools" })

-- Show help in normal mode
map("n", "<S-tab>", function()
  vim.lsp.buf.hover()
end, { desc = "Show code line info" })

-- Remove LazyTerm keymap
rmmap("n", "<leader>ft")
rmmap("n", "<leader>fT")
rmmap("n", "<c-/>")

-- Set toggleterm keybind, adapted from AstroNvim config with small addition
map("n", "<leader>Th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "ToggleTerm horizontal split" })
map("n", "<leader>Tv", "<cmd>ToggleTerm size=40 direction=vertical<cr>", { desc = "ToggleTerm vertical split" })
map("n", "<leader>Tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm float" })
map({ "n", "t" }, "<F7>", "<Cmd>ToggleTerm<CR>", { desc = "Show/hide ToggleTerm" })
map({ "n", "t" }, "<C-'>", "<cmd>ToggleTerm<cr>")

-- Remove Toggleterm buffer
map({ "n", "t" }, "<M-.>", function()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].filetype == "toggleterm" then
      vim.cmd.bdelete({ args = { buf }, bang = true })
    end
  end
end, { desc = "Exit from Toggleterm" })

-- Adjust delete keymaps
map("n", "<Del>", [["_d]], { desc = "Blackhole delete" })
