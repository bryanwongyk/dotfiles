return {
  {
    "nvim-treesitter/nvim-treesitter", 
    build=":TSUpdate",
    config = function()
      -- Treesitter config
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript", "typescript", "python", "java", "json"},
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  }
}
