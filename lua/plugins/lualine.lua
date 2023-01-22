return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	-- event = "VeryLazy",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
				theme = "auto"
			},
			sections = {
				lualine_c = {
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{ "filename", path = 3, symbols = { modified = "  ", readonly = "[Read Only]", unnamed = "[No Name]" } },
				},
			},
		})
	end
}
