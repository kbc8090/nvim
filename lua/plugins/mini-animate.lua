return {
	"echasnovski/mini.animate",
	-- "echasnovski/mini.nvim",
	-- branch = "stable",
	lazy = true,
	event = "VeryLazy",
	config = function()
		local animate = require("mini.animate")
		require("mini.animate").setup({
			cursor = {
				enable = true,
				timing = animate.gen_timing.exponential({ ease = "in-out", duration = 180, unit = "total" }),
				path = animate.gen_path.line(),
			},
			scroll = {
				enable = false,
			},
			resize = {
				timing = animate.gen_timing.exponential({ ease = "in-out", duration = 200, unit = "total" }),
			},
			open = {
				enable = false,
				timing = animate.gen_timing.exponential({ ease = "in-out", duration = 240, unit = "total" }),
			},
			close = {
				enable = false,
				timing = animate.gen_timing.exponential({ ease = "in-out", duration = 240, unit = "total" }),
			},
		})
	end,
}
