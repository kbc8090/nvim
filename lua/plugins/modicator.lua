return {
  "melkster/modicator.nvim",
  cond = false,
  config = function()
    require("modicator").setup({
      show_warnings = true,
    })
  end
}
