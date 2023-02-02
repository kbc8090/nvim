return {
  "folke/tokyonight.nvim",
  -- lazy = false,
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = { bold = false },
      },
      sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
      dim_inactive = false, -- dims inactive windows
      lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

      --- You can override specific color groups to use other groups or a hex color
      --- function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors) end,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(hl, c)
        hl.rainbowcol1 = {
          fg = c.yellow,
          bold = true,
        }
        hl.rainbowcol2 = {
          fg = c.blue,
          bold = true,
        }
        hl.rainbowcol3 = {
          fg = c.red,
          bold = true,
        }
        hl.rainbowcol4 = {
          fg = c.yellow,
          bold = true,
        }
        hl.rainbowcol5 = {
          fg = c.teal,
          bold = true,
        }
        hl.rainbowcol6 = {
          fg = c.magenta,
          bold = true,
        }
        hl.rainbowcol7 = {
          fg = c.purple,
          bold = true,
        }
        hl.CursorLine = {
          bg = "#32384f",
        }
        hl.TelescopeSelectionCaret = {
          fg = c.green,
        }
      end,
    })
  end
}
