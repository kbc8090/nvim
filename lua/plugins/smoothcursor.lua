return {
  'gen740/SmoothCursor.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('smoothcursor').setup({
      autostart = true,
      cursor = "▷",              -- cursor shape (need nerd font)
      texthl = "SmoothCursor",   -- highlight group, default is { bg = nil, fg = "#FFD400" }
      linehl = "CursorLineNR",              -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
      type = "exp",          -- define cursor movement calculate function, "default" or "exp" (exponential).
      fancy = {
        enable = true,        -- enable fancy mode
        head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
        body = {
          { cursor = "", texthl = "Label" },
          { cursor = "", texthl = "Function" },
          { cursor = "●", texthl = "Float" },
          { cursor = "●", texthl = "Statement" },
          { cursor = "•", texthl = "Label" },
          { cursor = ".", texthl = "Boolean" },
          { cursor = ".", texthl = "String" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" }
      },
      flyin_effect = "top",        -- "bottom" or "top"
      speed = 35,                -- max is 100 to stick to your current position
      intervals = 25,            -- tick interval
      priority = 10,             -- set marker priority
      timeout = 3000,            -- timout for animation
      threshold = 4,             -- animate if threshold lines jump
      disable_float_win = false, -- disable on float window
      enabled_filetypes = nil,   -- example: { "lua", "vim" }
      disabled_filetypes = nil,  -- this option will be skipped if enabled_filetypes is set. example: { "TelescopePrompt", "NvimTree" }
    })
  end
}
