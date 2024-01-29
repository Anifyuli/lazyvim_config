-- This is config files for coding stuff, include override default config of LazyVim and add new formatter or something like that
return {
  -- Override LuaSnip configs
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- Dart formatting support
  {
    "dart-lang/dart-vim-plugin",
  },
  -- Embedded code support
  {
    "AndrewRadev/inline_edit.vim",
  },
  -- Add Wakatime to tracking coding activities in Neovim
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
}
