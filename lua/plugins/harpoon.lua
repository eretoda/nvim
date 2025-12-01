local key = require("utils").key

return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({

			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},

			key(
				"n",
				"gha",
				":lua require('harpoon.mark').add_file()<CR> :lua print('added')<CR>",
				{ noremap = true, silent = true }
			),

			key("n", "ght", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true }),
		})
	end,
}
