return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	tag = '0.1.1',
	cmd = "Telescope",
	dependencies = {"nvim-lua/plenary.nvim"},
	config = function()
		require("telescope").setup({
			defaults = {
				sorting_strategy = 'ascending',
				layout_config = {
					prompt_position = 'bottom'
				},
				prompt_prefix = " ",
				selection_caret = " "
			}
		})
	end
}
