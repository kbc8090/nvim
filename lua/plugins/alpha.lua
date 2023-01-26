return {
  "goolord/alpha-nvim",
  lazy = true,
  cond = true,
  event = "VimEnter",
  priority = 900,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
    ██████   █████                   █████   █████  ███                  
    ░██████ ░░███                   ░░███   ░░███  ░░░                   
    ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   
    ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  
    ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  
    ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  
    █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ 
    ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  
    ]]
    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find File", ":Telescope find_files <CR>"),
      dashboard.button("F", " " .. " Find Hidden Files", ":Telescope find_files follow=true no_ignore=true hidden=true<CR>"),
      dashboard.button("n", " " .. " New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", " " .. " Recent Files", ":Telescope oldfiles <CR>"),
      dashboard.button("g", " " .. " Find Text (Grep)", ":Telescope live_grep <CR>"),
      dashboard.button("t", " " .. " Open NeoTree", ":Neotree <CR>"),
      dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
      dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    local function pick_color()
      local colors = {"String", "Identifier", "Keyword", "Number", "Class", "Constant", "Conditional", "Function"}
      return colors[math.random(#colors)]
    end
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = pick_color()
      button.opts.hl_shortcut = pick_color()
    end
    dashboard.section.footer.opts.hl = pick_color()
    -- dashboard.section.header.opts.padding = 10
    dashboard.section.header.opts.hl = pick_color()
    dashboard.section.buttons.opts.hl = pick_color()
    local marginTopPercent = 0.15
    local headerPadding = vim.fn.max({2, vim.fn.floor(vim.fn.winheight(0) * marginTopPercent) })
    dashboard.opts.layout[1].val = headerPadding
    return dashboard
  end,
  config = function(_, dashboard)
    -- vim.b.miniindentscope_disable = true
    -- math.randomseed(os.time())

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)
    -- vim.cmd([[
    -- autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
    -- ]])
    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n ⚡ Neovim Loaded " .. stats.count .. " Plugins in " .. ms .. "ms "
        -- pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
