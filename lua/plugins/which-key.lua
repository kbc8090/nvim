return {
  "folke/which-key.nvim",
  -- lazy = false,
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 600
    require("which-key").setup({
      window = {
        border = "rounded",
        padding = { 1, 1, 1, 1 },
        winblend = 0
      },
    })
  end
}
