return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lsp
      "bash-language-server",
      "css-lsp",
      "emmet-ls",
      "html-lsp",
      "lua-language-server",
      "marksman",
      -- dap
      "bash-debug-adapter",
      "dart-debug-adapter",
      -- linter
      "htmlhint",
      "markdownlint",
      -- formatter
      "beautysh",
      "prettier",
      "stylua",
      "shfmt",
    },
  },
}
