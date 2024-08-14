return {
  "rebelot/kanagawa.nvim",
  event = "VeryLazy",
  config = function()
    require('kanagawa').setup({
      compile = false,             -- enable compiling the colorscheme
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,         -- do not set background color
      dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      overrides = function(colors) -- add/modify highlights
        local default = colors.palette
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NoiceCmdlineIcon = { bg = "none", fg = theme.ui.fg_dim },
          NoiceCmdlinePopupBorder = { bg = "none", fg = theme.ui.special, bold = true },
          -- depth 1
          RainbowDelimiterRed = { fg = default.sakuraPink, bold = true },
          -- depth 2
          RainbowDelimiterYellow = { fg = default.carpYellow, bold = true },
          -- depth 3
          RainbowDelimiterBlue = { fg = default.surimiOrange, bold = true },
          -- depth 4
          RainbowDelimiterGreen = { fg = default.springGreen, bold = true },
          -- depth 5
          RainbowDelimiterCyan = { fg = default.waveAqua2, bold = true },
          -- depth 6
          RainbowDelimiterOrange = { fg = default.springViolet1, bold = true },
          -- depth 7
          RainbowDelimiterViolet = { fg = default.sakuraPink, bold = true },
          TelescopeTitle = { fg = theme.syn.number, bold = true },
          TelescopePromptPrefix = { fg = theme.syn.string },
          TelescopeSelection = { bg = theme.ui.bg_search },
          Operator = { fg = theme.syn.number },
          BufferLineIndicatorSelected = { fg = default.sakuraPink },
          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
      end,
      theme = "wave", --Load "wave" theme when 'background' option is not set
    })
  end
}
