return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      dark_variant = 'moon',
      disable_background = true,
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
          fg = 'love',
          bold = true,
        },
        rainbowcol7 = {
          fg = 'foam',
          bold = true,
        },
        BufferLineIndicatorSelected = {
          fg = 'pine',
        },
        IndentBlanklineChar = {
          fg = '#44415a',
        },
      }
    })
  end
}
