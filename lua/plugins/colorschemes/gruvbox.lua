return {
  "ellisonleao/gruvbox.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    local colors = require('gruvbox.palette')
    require("gruvbox").setup({
      -- undercurl = true,
      -- underline = true,
      bold = true,
      italic = true,
      -- strikethrough = true,
      -- invert_selection = false,
      -- invert_signs = false,
      -- invert_tabline = false,
      -- invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      -- palette_overrides = {},
      overrides = {
        rainbowcol1 = {
          fg = colors.bright_yellow,
          bold = true,
        },
        rainbowcol2 = {
          fg = colors.bright_aqua,
          bold = true,
        },
        rainbowcol3 = {
          fg = colors.bright_purple,
          bold = true,
        },
        rainbowcol4 = {
          fg = colors.bright_red,
          bold = true,
        },
        rainbowcol5 = {
          fg = colors.bright_orange,
          bold = true,
        },
        rainbowcol6 = {
          fg = colors.bright_aqua,
          bold = true,
        },
        rainbowcol7 = {
          fg = colors.bright_yellow,
          bold = true,
        },
        TelescopePromptPrefix = {
          fg = colors.bright_purple,
        },
        TelescopeTitle = {
          fg = colors.bright_orange,
        },
        TelescopeSelectionCaret = {
          fg = colors.bright_aqua,
        },
      },
      dim_inactive = false,
      transparent_mode = true,
    })
end
}
