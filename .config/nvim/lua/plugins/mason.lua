return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      -- LSP
      "ts_ls",
      "html",
      "cssls",
      "tailwindcss",
      "eslint",
      "lua_ls",
      "pyright",
      "gopls",
      "clangd",
    },
  },
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    "neovim/nvim-lspconfig",
  },
}
