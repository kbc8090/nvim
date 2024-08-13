
return {
	'lukas-reineke/indent-blankline.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	main = 'ibl',
   cond = false,
	opts = {
		indent = { char = '▏' },
      exclude = { filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" }},
	},
}
