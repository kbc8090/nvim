return {
  "navarasu/onedark.nvim",
  -- lazy = false,
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require('onedark').setup ({
      -- Main options --
      style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = true,  -- Show/hide background
      term_colors = false, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer'}, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
      },

      -- Lualine options --
      lualine = {
        transparent = true, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {
        rainbowcol1 = {
          fg = "#ef5f6b",
          bold = true,
        },
        NeoTreeWinSeparator = {
          fg = "$bg3",
          bold = true,
        },
        BufferLineIndicatorSelected = {
          fg = "$orange",
        },
        TelescopeTitle = {
          fg = "$purple",
          bold = true,
        },
        NeoTreeFloatTitle = {
          fg = "$purple",
          bold = true,
        },
        CursorLine = {
          bg = "$bg3",
        },
        CursorLineNR = {
          bg = "$orange",
          bold = true,
        },
        MiniIndentscopeSymbol = {
          fg = "$blue",
        },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
      },
    })
    --require('onedark').load()
    --vim.cmd('colorscheme onedark')
  end
}

