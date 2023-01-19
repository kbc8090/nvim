return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = false,
	config = function()
		require("indent_blankline").setup {
			show_end_of_line = true,
			filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
			space_char_blankline = " ",
		}
	end
}
