return {
  "xiyaowong/transparent.nvim",
  -- lazy = false,
  -- priority = 40,
  event = {"BufEnter", "BufAdd", "BufReadPre" },
  -- event = "VeryLazy",
  config = function()
    require("transparent").setup({
      -- enable = true, -- boolean: enable transparent
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
      "GitGutterChange",
      "GitGutterAdd",
      "GitGutterDelete",
      "GitGutterChangeDelete",
      "FloatBorder",
      "TelescopeNormal",
      "TelescopeResultsNormal",
      "TelescopePreviewNormal",
      "TelescopePromptNormal",
      "TelescopeBorder",
      "TelescopePreviewBorder",
      "TelescopePromptBorder",
      "TelescopePromptPrefix",
      "Pmenu",
    },
  })
end
}
