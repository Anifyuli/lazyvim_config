return {
  "nvim-tree/nvim-web-devicons",
  lazy = true,
  opts = {
    strict = true,
    override_by_filename = {
      [".gitattributes"] = {
        icon = "",
        color = "#dadada",
        cterm_color = "253",
        name = "GitAttributes",
      },
      [".gitconfig"] = {
        icon = "",
        color = "#8787ff",
        cterm_color = "105",
        name = "GitConfig",
      },
      [".gitignore"] = {
        icon = "",
        color = "#dadada",
        cterm_color = "253",
        name = "GitIgnore",
      },
      ["commit_editmsg"] = {
        icon = "",
        color = "#dadada",
        cterm_color = "253",
        name = "GitCommit",
      },
    },
  },
}
