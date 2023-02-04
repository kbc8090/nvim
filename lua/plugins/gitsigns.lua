return {
  "lewis6991/gitsigns.nvim",
  cond = true,
  lazy = true,
  event = { "BufReadPre", "BufNewFile", "BufAdd" },
  config = function()
    require("gitsigns").setup()
  end
}
