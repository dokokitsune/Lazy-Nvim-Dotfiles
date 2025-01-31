require("config.lazy")
require("lazy").setup("plugins")

require("config.options")
require("config.keybinds")
require("lualine").setup()
require("mason").setup()
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
    "fish_lsp",
  },
})
require("config.git")
require("config.nonels-conf")

require("config.cmp")
