return  {
  "echasnovski/mini.indentscope",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  lazy = false,
  -- cond = true,
  priority = 800,
  -- event = "BufReadPost",
  config = function()
    require("mini.indentscope").setup({
      symbol = "▏",
      options = { try_as_border = true },
    })
  end,
}
