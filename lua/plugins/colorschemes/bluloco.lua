return {
  'uloco/bluloco.nvim',
  dependencies = { 'rktjmp/lush.nvim'},
  -- lazy = false,
  event = "VeryLazy",
  priority = 900,
  config = function()
    require("bluloco").setup({
      style = "dark",
      -- transparent = true,
      italics = true,
    })
  end
}
