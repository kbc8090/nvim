return {
  'rose-pine/neovim',
  name = 'rose-pine',
  -- lazy = false,
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
    styles = {
        bold = true,
        italic = true,
        transparency = true,
    },
      dark_variant = 'moon',
      --disable_background = true,
      disable_italics = true,
      highlight_groups = {
        RainbowDelimiterRed = {
          fg = 'rose',
          bold = true,
        },
        RainbowDelimiterYellow = {
          fg = 'pine',
          bold = true,
        },
        RainbowDelimiterBlue = {
          fg = 'iris',
          bold = true,
        },
        RainbowDelimiterGreen = {
          fg = 'gold',
          bold = true,
        },
        RainbowDelimiterCyan = {
          fg = 'love',
          bold = true,
        },
        RainbowDelimiterOrange = {
          fg = 'foam',
          bold = true,
        },
        RainbowDelimiterViolet = {
          fg = 'love',
          bold = true,
        },
        BufferLineIndicatorSelected = {
          fg = 'iris',
        },
        IndentBlanklineChar = {
          fg = '#44415a',
        },
        CursorLine = {
          bg = '#393552',
        },
        TelescopePromptPrefix = {
          fg = 'gold',
        },
        TelescopeTitle = {
          fg = 'rose',
          bold = true,
        },
        TelescopeSelectionCaret = {
          fg = 'foam',
        },
        NeoTreeFloatTitle = {
          fg = 'rose',
          bold = true,
          italic = true,
        },
      }
    })
  end
}
