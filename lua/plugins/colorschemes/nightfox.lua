return {
  "EdenEast/nightfox.nvim",
  -- lazy = false, 
  event = "VeryLazy",
  priority = 1000,
  config = function()
    local palette = require('nightfox.palette').load("nightfox")
    require('nightfox').setup({
      options = {
        transparent = true,
      },
      groups = {
        all = {
          TelescopeTitle = { fg = palette.orange },
          BufferLineIndicatorSelected = { fg = palette.cyan },
        },
      },
    })
  end
}
