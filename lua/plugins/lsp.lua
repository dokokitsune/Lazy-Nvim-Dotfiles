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
					"cssls",
					"ts_ls",
					"pyright",
					"pylsp",
					"nginx_language_server",
					"clangd",
					"vimls",
					"dockerls",
					"taplo",
					"yamlls",
					"terraformls",
					"tflint",
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
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			lspconfig.lua_ls.setup({ capabilities = lsp_capabilities })
			lspconfig.ts_ls.setup({ capabilities = lsp_capabilities })
			lspconfig.clangd.setup({ capabilities = lsp_capabilities })
			lspconfig.pyright.setup({ capabilities = lsp_capabilities })
			lspconfig.pylsp.setup({ capabilities = lsp_capabilities })
			lspconfig.vimls.setup({ capabilities = lsp_capabilities })
			lspconfig.dockerls.setup({ capabilities = lsp_capabilities })
			lspconfig.bashls.setup({ capabilities = lsp_capabilities })
			lspconfig.cssls.setup({ capabilities = lsp_capabilities })
			lspconfig.nginx_language_server.setup({ capabilities = lsp_capabilities })
			lspconfig.taplo.setup({ capabilities = lsp_capabilities })
			lspconfig.yamlls.setup({ capabilities = lsp_capabilities })
			lspconfig.terraformls.setup({
				capabilities = lsp_capabilities,
				filetypes = { "terraform", "terraform-vars", "tf", "hcl" },
			})
			lspconfig.tflint.setup({
				capabilities = lsp_capabilities,
				filetypes = { "terraform", "tf", "hcl" },
			})
		end,
	},
}
