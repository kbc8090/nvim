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
      transparent_background = true, 
      show_end_of_buffer = false, -- show the '~' characters after the end of buffers
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
          BufferLineIndicatorSelected = { fg = mocha.mauve },
          TelescopePromptPrefix = { fg = mocha.peach },
          TelescopeTitle = { fg = mocha.green, bold = true },
          NeoTreeFloatTitle = { fg = mocha.maroon, bold = true },
          rainbowcol1 = { fg = mocha.red, bold = true },
          rainbowcol2 = { fg = mocha.sky, bold = true },
          rainbowcol3 = { fg = mocha.peach, bold = true },
          rainbowcol4 = { fg = mocha.blue, bold = true },
          rainbowcol5 = { fg = mocha.pink, bold = true },
          rainbowcol6 = { fg = mocha.flamingo, bold = true },
          rainbowcol7 = { fg = mocha.green, bold = true },
          MiniIndentscopeSymbol = { fg = mocha.yellow },
          CursorLine = { bg = "#362F4A" },
          TelescopeSelection = { bg = "#362F4A", fg = mocha.mauve, bold = true },
          IndentBlanklineChar = { fg = mocha.surface1  },
        }
      end,
      integrations = {
        gitsigns = true,
        telescope = true,
        notify = true,
        mini = true,
        noice = true,
        treesitter = true,
        ts_rainbow = true,
        which_key = true,
      },
      indent_blankline = {
        enabled = true,
      },
    })
  end
}

