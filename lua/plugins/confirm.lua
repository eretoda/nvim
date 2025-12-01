local key = require("utils").key

return {
	"stevearc/conform.nvim",
	opts = {},

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "stylelint" },
				blade = { "blade-formatter" },
				-- Conform will run multiple formatters sequentially
				python = { "reorder-python-imports", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
		})

		key("n", "<space>e", function()
			require("conform").format({
				async = true,
				lsp_fallback = true, -- conformで設定されていないファイルタイプはLSPに任せる
			})
		end, { noremap = true, desc = "Format with Conform" })
	end,
}
