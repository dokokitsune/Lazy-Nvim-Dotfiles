return {
	--URL open
	{
		"sontungexpt/url-open",
		event = "VeryLazy",
		cmd = "URLOpenUnderCursor",
		config = function()
			local status_ok, url_open = pcall(require, "url-open")
			if not status_ok then
				return
			end
			url_open.setup({})
			vim.keymap.set("n", "<leader>u", ":URLOpenUnderCursor<CR>")
		end,
	},
	--Bufferline
	{
		"akinsho/bufferline.nvim",
		version = "4.9.1",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({})
		end,
	},

	--Which-Key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	--Neoscroll
	{
		"karb94/neoscroll.nvim",
		opts = {},
		config = function()
			vim.keymap.set("n", "<ScrollWheelUp>", "<C-y>")
			vim.keymap.set("n", "<ScrollWheelDown>", "<C-e>")
			vim.keymap.set("i", "<ScrollWheelUp>", "<C-y>")
			vim.keymap.set("i", "<ScrollWheelDown>", "<C-e>")
			vim.keymap.set("v", "<ScrollWheelUp>", "<C-y>")
			vim.keymap.set("v", "<ScrollWheelDown>", "<C-e>")
			require("neoscroll").setup({})
		end,
	},

	--Ghostty Support
	{
		"isak102/ghostty.nvim",
		config = function()
			require("ghostty").setup()
		end,
	},

	--Indent
	{
		"nvimdev/indentmini.nvim",
		config = function()
			require("indentmini").setup() -- use default config
		end,
	},
	--Smooth Cursor

	{
		"gen740/SmoothCursor.nvim",
		config = function()
			require("smoothcursor").setup()
		end,
	},
	--Smear Cursor
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
		config = function()
			require("smear_cursor").setup({
				cursor_color = "#d3cdc3",
			})
		end,
	},
}
