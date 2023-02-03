return {
  "lukas-reineke/indent-blankline.nvim",
  -- lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  -- cond = true,
  config = function()
    require("indent_blankline").setup {
      show_end_of_line = true,
      filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
      space_char_blankline = " ",
      show_trailing_blankline_indent = false,
      -- use_treesitter = true,
      char = "▏",
      context_char = "▏",
      show_current_context_start = false,
      -- show_current_context = true,
    }
  end
}
