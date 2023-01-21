return {
	'akinsho/bufferline.nvim',
	tag = 'v3.1.0',
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	config = function()
		require("bufferline").setup({
			options = {
				max_name_length = 20,
				tab_size = 20,
				modified_icon = "",
				buffer_close_icon = "",
				close_icon = "",
				-- color_icons = false,
			}
		})
	end
}
