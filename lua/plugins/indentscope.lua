return  {
	 "echasnovski/mini.indentscope",
	 version = false, -- wait till new 0.7.0 release to put it back on semver
	 lazy = false,
	 cond = false,
	 priority = 800,
	 -- event = "BufReadPre",
	 config = function()
			require("mini.indentscope").setup({
				 symbol = "▏",
				 options = { try_as_border = true },
			})
	 end,
}
