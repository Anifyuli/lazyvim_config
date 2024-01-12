-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g

-- Using Vim built-in options
opt.wrap = true

-- Configure dart-vim-plugin
g.dart_style_guide = 2
g.dart_format_on_save = true
