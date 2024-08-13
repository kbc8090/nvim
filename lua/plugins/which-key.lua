return {
  "folke/which-key.nvim",
  -- lazy = false,
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 600
  end
}
