return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile", "VimEnter" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
			},
		})
	end,
}
