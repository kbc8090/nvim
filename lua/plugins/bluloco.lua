return {
	'uloco/bluloco.nvim',
	dependencies = { 'rktjmp/lush.nvim'},
	lazy = false,
	-- priority = 900,
	config = function()
		require("bluloco").setup({
			style = "dark",
			-- transparent = true,
			italics = true,
		})
	end
}
