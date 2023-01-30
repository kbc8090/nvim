return {
  "VDuchauffour/neodark.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("neodark").setup({
      theme_style = "neodark",
    })
  end
}
