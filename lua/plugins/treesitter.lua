return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "lua",
          "javascript",
          "cpp",
          "css",
          "html",
          "nix",
          "scss",
          "typescript",
          "yaml",
          "json",
          "toml",
          "python",
          "fish",
          "bash",
          "c",
          "dockerfile",
          "tsx",
          "gitignore",
          "hcl",
        },
        highlight = true,
        sync_install = false,
        indent = true,
      })
    end,
  },
}
