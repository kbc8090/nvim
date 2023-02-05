return {
  'rose-pine/neovim',
  name = 'rose-pine',
  -- lazy = false,
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      dark_variant = 'moon',
      disable_background = true,
      disable_italics = false,
      highlight_groups = {
        rainbowcol1 = {
          fg = 'rose',
          bold = true,
        },
        rainbowcol2 = {
          fg = 'pine',
          bold = true,
        },
        rainbowcol3 = {
          fg = 'iris',
          bold = true,
        },
        rainbowcol4 = {
          fg = 'gold',
          bold = true,
        },
        rainbowcol5 = {
          fg = 'love',
          bold = true,
        },
        rainbowcol6 = {
          fg = 'foam',
          bold = true,
        },
        rainbowcol7 = {
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
        },
        NeoTreeFloatTitle = {
          fg = 'rose',
        },
      }
    })
  end
}
