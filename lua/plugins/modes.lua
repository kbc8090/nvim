return {
  'mvllow/modes.nvim',
  tag = 'v0.2.1',
  cond = true,
  event = "VeryLazy",
  config = function() 
    require('modes').setup({
      colors = {
        copy = "#f5c359",
        delete = "#c75c6a",
        insert = "#78ccc5",
        visual = "#ed8cea",
      },
      line_opacity = 0.36,
      set_cursor = false,
      set_cursorline = false,
      set_number = false,
      ignore_filetypes = { 'TelescopePrompt', 'alpha', 'neo-tree' }
    }) 
  end
}
