return {
  'akinsho/bufferline.nvim',
  tag = 'v3.1.0',
  dependencies = "nvim-tree/nvim-web-devicons",
  -- lazy = true,
  event = "VimEnter",
  config = function()
    require("bufferline").setup({
      options = {
        max_name_length = 22,
        tab_size = 22,
        modified_icon = "",
        buffer_close_icon = "",
        close_icon = "",
        show_close_icon  = false,
        color_icons = true,
        indicator = {
          icon = '▌', -- this should be omitted if indicator style is not 'icon'
          -- style = 'icon',
        }, 
        offsets = {
          {
            filetype = "neo-tree",
            text = "  Explorer",
            text_align = "center",
            highlight = "Constant",
            separator = true,
          }
        },
      },
      highlights = {
        tab = {
          fg = {
            attribute = "fg",
            highlight = "Boolean"
          },
          bg = {
            attribute = "bg",
            highlight = "Error"
          }
        },
        close_button_selected = {
          fg = {
            attribute = "fg",
            highlight = "Error"
          }
        },
        separator = {
          fg = {
            attribute = "fg",
            highlight = "IndentBlanklineChar",
          }
        },
        offset_separator = {
          fg = {
           attribute = "fg",
           highlight = "VertSplit",
          }
        },
      }
    })
  end
}
