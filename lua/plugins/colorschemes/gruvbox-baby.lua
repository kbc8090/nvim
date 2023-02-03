return {
  'luisiacc/gruvbox-baby',
  -- lazy = false,
  event = "VeryLazy",
  cond = false,
  priority = 1000,
  config = function()
    require("gruvbox-baby").setup({
      transparent_mode = true,
    })
  end
}
