return {
	'akinsho/bufferline.nvim',
	tag = 'v3.1.0',
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	config = function()
		require("bufferline").setup{}
	end
}
