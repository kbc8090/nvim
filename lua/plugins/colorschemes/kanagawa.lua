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
      overrides = function(colors) -- add/modify highlights
        local theme = colors.theme
        return {
          LazyNormal = { bg = "none", fg = "red"},
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NoiceCmdlineIcon = { bg = "none", fg = theme.ui.fg_dim },
          NoiceCmdlinePopupBorder = { bg = "none", fg = theme.ui.special },
          RainbowDelimiterBlue = { bold = true },
          RainbowDelimiterCyan = { bold = true },
          RainbowDelimiterGreen = { bold = true },
          RainbowDelimiterOrange = { bold = true },
          RainbowDelimiterRed = { fg = theme.syn.number, bold = true },
          RainbowDelimiterViolet = { bold = true },
          RainbowDelimiterYellow = { fg = theme.syn.string, bold = true },
          TelescopeTitle = { fg = theme.syn.number, bold = true },
          TelescopePromptPrefix = { fg = theme.syn.string },
          Operator = { fg = theme.syn.number },
          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
      end,
      theme = "wave", --Load "wave" theme when 'background' option is not set
    })
  end
}
