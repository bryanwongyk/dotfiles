return {
  -- oil - used for file modification
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} }, { "nvim-tree/nvim-web-devicons" } },
  config = function(_, opts)
    require("oil").setup(opts)
    vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent drectory" })
  end,
}
