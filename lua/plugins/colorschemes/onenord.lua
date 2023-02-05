return {
  'rmehri01/onenord.nvim',
  branch = "main",
  -- cond = false,
  lazy = true,
  priority = 1000,
  config = function()
    local colors = require('onenord.colors').load()
    require('onenord').setup({
      theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
      -- borders = true, -- Split window borders
      -- fade_nc = false, -- Fade non-current windows, making them more distinguishable
      -- disable = {
      --   background = true, -- Disable setting the background color
      --   cursorline = false, -- Disable the cursorline
      --   eob_lines = true, -- Hide the end-of-buffer lines
      -- },
      custom_highlights = {
        TelescopePromptPrefix = { fg = colors.green },
        TelescopeTitle = { fg = colors.orange },
        NeoTreeFloatTitle = { fg = colors.orange },
      },
    })
  end
}
