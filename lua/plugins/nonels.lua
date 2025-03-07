return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettierd",
					"pyink",
					"stylua",
					"yamlfmt",
					"eslint_d",
					"stylelint",
					"cpplint",
					"pylint",
					"codespell",
					"luacheck",
				},
			})
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "gbprod/none-ls-luacheck.nvim", "nvimtools/none-ls-extras.nvim" },
		config = function()
			local config = require("null-ls")
			config.setup({
				debug = true,
				sources = {

					--Formaters
					config.builtins.formatting.stylua, --Lua
					config.builtins.formatting.pyink, --Python 2, 3
					config.builtins.formatting.prettierd,
					config.builtins.formatting.terraform_fmt,

					--linters
					require("none-ls.diagnostics.eslint_d"),
					config.builtins.diagnostics.stylelint, --CSS, SCSS
					require("none-ls.diagnostics.cpplint"), --c c++
					config.builtins.diagnostics.codespell, --Spellcheck
					config.builtins.diagnostics.pylint, --Python
					config.builtins.diagnostics.yamllint, --YAML
					require("none-ls-luacheck.diagnostics.luacheck"),
					--Code Actions
					require("none-ls.code_actions.eslint_d"),
				},
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.tsx", "*.jsx", "*.yaml", "*.json", "*.yml", "*.tf" },
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end,
	},
}
