return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  -- event = "VeryLazy",
  config = function ()
    -- local color1 = vim.api.nvim_get_hl_by_name("Error", true).foreground
		-- color1 = string.format('#%06x', color1)
      -- local M = {}
      --
      -- function M.get_color(hlgroup, attr)
      --   return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Constant")), attr, 'guifg')
      --   -- return vim.api.nvim_get_hl_by_name(hlgroup, true)[attr]
      -- end
      -- print(M)
    -- local color2 = vim.api.nvim_get_hl_by_name("Constant", true).foreground
    -- local color3 = vim.api.nvim_get_hl_by_name("Conditional", true).foreground
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "help", "rust", "python", "haskell", "fish", "bash", "html", "diff" },

      -- Only sync_install if running headless.
      -- From: https://github.com/nvim-treesitter/nvim-treesitter/issues/3579#issuecomment-1278662119
      sync_install = false,

      highlight = {
        enable = true,
        -- disable = { "help" }
      },
      rainbow = {
        enable = true,
        extended_mode = true,
         -- colors = {
         --   vim.api.nvim_get_hl_by_name("Error", true).foreground,
         --  -- 'color2',
         --  -- 'color3',
         -- },
      },
      -- markid = { enable = true }
    })

    -- Override default folding options.
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldlevel = 999999 -- Leave unfolded by default.
    vim.opt.foldmethod = "expr"
  end,
  build = ":TSUpdate"
}
