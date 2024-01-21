return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lsp
      "bash-language-server",
      "css-lsp",
      "html-lsp",
      "lua-language-server",
      "marksman",
      "vue-language-server",
      -- dap
      "bash-debug-adapter",
      "dart-debug-adapter",
      "js-debug-adapter",
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
