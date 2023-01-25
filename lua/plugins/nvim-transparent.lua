return {
  "xiyaowong/nvim-transparent",
  lazy = false,
  priority = 900,
  config = function()
    require("transparent").setup({
      enable = true, -- boolean: enable transparent
      extra_groups = { -- table/string: additional groups that should be cleared
      -- In particular, when you set it to 'all', that means all available groups
      -- example of akinsho/nvim-bufferline.lua
      "BufferLineTabClose",
      "BufferlineBufferSelected",
      "BufferLineFill",
      "BufferLineBackground",
      "BufferLineSeparator",
      "BufferLineTabSeparator",
      "BufferLineIndicatorSelected",
      "NormalFloat",
      "VertSplit",
      "WhichKeyFloat",
    },
    exclude = {}, -- table: groups you don't want to clear
  })
end
}
