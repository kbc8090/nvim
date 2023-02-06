return {
  "cpea2506/one_monokai.nvim",
  lazy = true,
  -- event = "VeryLazy",
  -- priority = 1000,
  config = function()
    require("one_monokai").setup({
      transparent = true,
      themes = function(mycolors)
        return {
          NeoTreeFloatTitle = { fg = mycolors.aqua, bold = true },
          MiniIndentscopeSymbol = { fg = mycolors.aqua },
          rainbowcol1 = { fg = mycolors.yellow, bold = true },
          rainbowcol2 = { fg = mycolors.aqua, bold = true },
          rainbowcol3 = { fg = mycolors.dark_pink, bold = true},
          rainbowcol4 = { fg = mycolors.purple, bold = true},
          rainbowcol5 = { fg = mycolors.dark_cyan, bold = true},
          rainbowcol6 = { fg = mycolors.orange, bold = true},
          rainbowcol7 = { fg = mycolors.green, bold = true},
        }
      end
    })
  end
}
