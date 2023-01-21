return {
    "lewis6991/gitsigns.nvim",
	 cond = true,
	 lazy = false,
	 event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("gitsigns").setup()
    end
}

