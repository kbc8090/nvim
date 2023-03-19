return {
  'akinsho/bufferline.nvim',
  tag = 'v3.5.0',
  dependencies = "nvim-tree/nvim-web-devicons",
  -- lazy = true,
  event = { "BufReadPre", "BufNewFile", "BufAdd" },
  config = function()
    local constanthl = vim.api.nvim_get_hl_by_name("Constant", true)
    vim.api.nvim_set_hl(0, 'BufferLineOffsetHL', { fg = constanthl.foreground, bold = true })
    require("bufferline").setup({
      options = {
        max_name_length = 23,
        tab_size = 23,
        modified_icon = "",
        buffer_close_icon = "",
        close_icon = "",
        close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        -- left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        -- middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
        show_close_icon  = false,
        color_icons = true,
        -- custom_filter = function(bufnr)
        --   if vim.bo[bufnr].filetype ~= 'alpha' then
        --     return true 
        --   end
        -- end,
        indicator = {
          icon = '▌', -- this should be omitted if indicator style is not 'icon'
          -- style = 'icon',
        }, 
        offsets = {
          {
            filetype = "neo-tree",
            text = "  Explorer ",
            text_align = "center",
            highlight = "BufferLineOffsetHL",
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
        buffer_selected = { 
          fg = { attribute = "fg", highlight = "Number" },
          bold = true,
          italic = true,
        },
      }
    })
  end
}
