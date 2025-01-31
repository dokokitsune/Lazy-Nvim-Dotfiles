local nonels = require("null-ls")

nonels.setup({

  sources = {

    --Formaters
    nonels.builtins.formatting.stylua,
    nonels.builtins.formatting.black,
    nonels.builtins.formatting.prettierd,

    --linters
    nonels.builtins.diagnostics.eslint_d, --JS, TS
    nonels.builtins.diagnostics.codespell,
    nonels.builtins.diagnostics.commintlint,
    nonels.builtins.diagnostics.pylint, --Python
    nonels.builtins.diagnostics.yamllint, --YAML
    nonels.builtins.diagnostics.luacheck, --Lua

    --Code Actions
    nonels.builtins.code_actions.eslint_d,
  },
})

--Autoformats on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.tsx", "*.jsx" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
