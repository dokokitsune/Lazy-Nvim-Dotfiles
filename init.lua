require("config.lazy")
require("lazy").setup("plugins")

require("config.options")
require("config.keybinds")
require("lualine").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  "lua_ls",
  "bashls",
  "html",
  "htmx",
  "ts_ls",
  "pyright",
  "nginx_language_server",
  "clangd",
  "csharp_ls",
  "vimls",
  "fish_lsp",
})
require("config.nonels-conf")

require("config.cmp")
