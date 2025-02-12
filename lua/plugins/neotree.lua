return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", { desc = "Neotree Open Left Side" })
      vim.keymap.set(
        "n",
        "<leader>g",
        ":Neotree float git_status git_base=main<CR>",
        { desc = "Neotree float git status for 'main'" }
      )
    end,
  },
}
