return {
  'akinsho/bufferline.nvim',
  tag = 'v3.1.0',
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  -- event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        max_name_length = 20,
        tab_size = 20,
        modified_icon = "",
        buffer_close_icon = "",
        close_icon = "",
        show_close_icon  = false,
        -- color_icons = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            text_align = "center",
            highlight = "Constant",
            separator = true,
          }
        },
      },
      highlights = {
        tab_close = {
          fg = {
            attribute = "fg",
            highlight = "Boolean"
          }
        },
      }
    })
  end
}
