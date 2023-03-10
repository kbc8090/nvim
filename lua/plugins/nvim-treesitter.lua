return {
  "nvim-treesitter/nvim-treesitter",
  -- lazy = false,
  event = { "BufNewFile", "BufReadPre", "BufAdd" },
  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "help", "rust", "python", "haskell", "fish", "bash", "html", "diff", "cpp", "javascript" },

      -- Only sync_install if running headless.
      -- From: https://github.com/nvim-treesitter/nvim-treesitter/issues/3579#issuecomment-1278662119
      sync_install = false,

      highlight = {
        enable = true,
        -- disable = { "help" }
      },
      rainbow = {
        enable = true,
        disable = { "alpha" },
        extended_mode = true,
        colors = {
          "#f9d202",
          "#d45ed2",
          "#179cfa",
          "#f9d202",
          "#d45ed2",
          "#179cfa",
          "#f9d202",
        },
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
