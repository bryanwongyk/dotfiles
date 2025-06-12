return {
	-- spectre - used to enable 'find all' and 'replace all'
	{
		"nvim-pack/nvim-spectre",
		config = function()
			require("spectre").setup({
				replace_engine = {
					["sed"] = {
						cmd = "sed",
						args = {
							"-i",
							"",
							"-E",
						},
					},
				},
			})
		end,
		keys = {
			{ "<leader>fa", '<cmd>lua require("spectre").toggle()<CR>', desc = "Toggle Spectre" },
			{
				"<leader>fcw",
				'<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
				desc = "Search current word",
			},
			{
				"<leader>fis",
				'<esc><cmd>lua require("spectre").open_visual()<CR>',
				desc = "Search in selection",
			},
			{
				"<leader>fcf",
				'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
				desc = "Search in current file",
			},
		},
	},
}
