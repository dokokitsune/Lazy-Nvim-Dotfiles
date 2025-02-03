return {

  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local config = require("null-ls")
      config.setup({
        sources = {

          --Formaters
          config.builtins.formatting.stylua,  --Lua
          config.builtins.formatting.black_client, --Python 2, 3
          config.builtins.formatting.prettierd, --JS, TS, HTML, CSS, JSON

          --linters
          config.builtins.diagnostics.eslint_d, --JS, TS
          config.builtins.diagnostics.stylelint, --CSS, SCSS
          config.builtins.diagnostics.cpplint, --c c++
          config.builtins.diagnostics.codespell, --Spellcheck
          config.builtins.diagnostics.commintlint,
          config.builtins.diagnostics.pylint, --Python
          config.builtins.diagnostics.yamllint, --YAML
          config.builtins.diagnostics.luacheck, --Lua

          --Code Actions
          config.builtins.code_actions.eslint_d,
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.tsx", "*.jsx" },
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end,
  },
}
