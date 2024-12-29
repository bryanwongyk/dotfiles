return {
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup()
    end,
    keys = {
      { "<leader>st", '<cmd>lua require("spectre").toggle()<CR>', desc = "Toggle Spectre" },
      { "<leader>scw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', desc = "Search current word" },
      { "v", "<leader>sis", '<esc><cmd>lua require("spectre").open_visual()<CR>', desc = "Search in selection" },
      { "<leader>scf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', desc = "Search in current file" },
    },
  },
}

