return {
  "nvim-tree/nvim-web-devicons",
  lazy = true,
  event = "ColorScheme",
  opts = function()
    local function get_fg_color()
      local synID = vim.fn.hlID("Normal")
      return vim.fn.synIDattr(synID, "fg", "guifg")
    end

    require("nvim-web-devicons").setup({
      override_by_filename = {
        [".gitattributes"] = {
          icon = "",
          color = get_fg_color(),
          name = "GitAttributes",
        },
        ["gitconfig"] = {
          icon = "",
          color = get_fg_color(),
          name = "GitConfig",
        },
        [".gitignore"] = {
          icon = "",
          color = get_fg_color(),
          name = "GitIgnore",
        },
        ["commit_editmsg"] = {
          icon = "",
          color = get_fg_color(),
          name = "GitCommit",
        },
      },
    })
  end,
}
