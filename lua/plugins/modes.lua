return {
	'mvllow/modes.nvim',
	lazy = false,
	tag = 'v0.2.0',
	config = function() 
		require('modes').setup({
			-- set opacity for cursorline and number background
			line_opacity = 0.10,

			-- Enable cursor highlights
			set_cursor = true,

			-- Enable cursorline initially, and disable cursorline for inactive windows
			-- or ignored filetypes
			set_cursorline = true,

			-- Enable line number highlights to match cursorline
			set_number = true,

			-- Disable modes highlights in specified filetypes
			-- Please PR commonly ignored filetypes
			ignore_filetypes = { 'TelescopePrompt' }
		}) 
	end
}
