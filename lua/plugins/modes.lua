return {
  'mvllow/modes.nvim',
  lazy = false,
  cond = true,
  tag = 'v0.2.0',
  config = function() 
    require('modes').setup({
      line_opacity = 0.33,
      set_cursor = true,
      set_cursorline = true,
      set_number = false,
      ignore_filetypes = { 'TelescopePrompt' }
    }) 
  end
}
