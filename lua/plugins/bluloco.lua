return {
	'uloco/bluloco.nvim',
	dependencies = { 'rktjmp/lush.nvim'},
	lazy = true,
	priority = 900,
	config = function()
		require("lualine").setup({
			style = "dark",
			-- transparent = true,
			italics = false,
			terminal = vim.fn.has("gui_running") == 1 -- bluoco colors are enabled in gui terminals per default.
		})
	end
}
