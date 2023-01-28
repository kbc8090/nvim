return {
  "neanias/everforest-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      -- Default is "medium".
      background = "hard",
      -- How much of the background should be transparent. Options are 0, 1 or 2.
      -- Default is 0.
      --
      -- 2 will have more UI components be transparent (e.g. status line
      -- background).
      transparent_background_level = 1 
    })
  end,
}
