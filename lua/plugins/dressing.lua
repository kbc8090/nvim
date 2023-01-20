return {
	'stevearc/dressing.nvim',
	cond = true,
	config = function() 
		require('dressing').setup({
			input = {
				enabled = true,
				default_prompt = "➤ ",
				win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
			},
			select = {
				backend = { "telescope" },
				builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
			},
		}) 
	end
}
