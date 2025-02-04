return {

  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()
    end,
  },
  {

    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "html",
          "htmx",
          "ts_ls",
          "pyright",
          "pylsp",
          "nginx_language_server",
          "clangd",
          "vimls",
          "dockerls",
        },
      })
    end,
  },
  {

    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")
      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.pyright.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.vimls.setup({})
    end,
  },
}
