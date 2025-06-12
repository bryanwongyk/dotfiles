return {
  -- color scheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts) -- Apply options manually
      vim.cmd("colorscheme tokyonight") -- Set colorscheme after setup
    end,
  },
}
