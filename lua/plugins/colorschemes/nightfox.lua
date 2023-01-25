return {
  "EdenEast/nightfox.nvim",
  lazy = false, 
  priority = 1000,
  config = function()
    require('nightfox').setup({
      options = {
        transparent = true,     -- Disable setting background
      },
    })
    end
  }
