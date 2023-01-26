return {
  "olimorris/onedarkpro.nvim",
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
