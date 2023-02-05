return {
  "catppuccin/nvim",
  name = "catppuccin",
  -- lazy = false,
  event = "VeryLazy",
  priority = 1000,
  config = function()
    local mocha = require("catppuccin.palettes").get_palette "mocha"
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
      enabled = true,
      shade = "dark",
      percentage = 0.45,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
      comments = { "italic" },
      conditionals = {},
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = function(colors)
      return {
        TelescopePromptPrefix = { fg = colors.green },
        TelescopeTitle = { fg = colors.peach },
        NeoTreeFloatTitle = { fg = colors.peach },
      }
    end,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = true,
      mini = true,
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  })
end
}
