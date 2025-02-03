return {
	{
		"echasnovski/mini.nvim",
		version = "0.15",
		config = function()
			require("mini.pairs").setup()
			require("mini.surround").setup()
			require("mini.comment").setup()
		end,
	},
}
