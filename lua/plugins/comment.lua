return {
  "numToStr/Comment.nvim",
  -- lazy = false,
  event = "VeryLazy",
  config = function ()
    require('Comment').setup()
  end
}
