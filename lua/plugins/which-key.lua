return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>T"] = { name = "Toggleterm" },
    })
  end,
}
