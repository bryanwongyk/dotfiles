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
		opts = {
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
          hide_hidden = false,
          always_show = {}
				},
			},
		},
		config = function(_, opts)
      require("neo-tree").setup(opts)
			vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>", {})
			vim.keymap.set("n", "<leader>fr", ":Neotree reveal right<CR>", {}) -- reveal current file in neotree
		end,
	},
}
