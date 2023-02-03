return {
  "olimorris/onedarkpro.nvim",
  event = "VeryLazy",
  priority = 1000,
  cond = false,
  config = function()
    require("onedarkpro").setup({
      options = {
        transparency = true
      }
    })
  end
}
