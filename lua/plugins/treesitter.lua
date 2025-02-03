return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "lua", "javascript" },
        highlight = true,
        sync_install = false,
        indent = true,
      })
    end,
  },
}
