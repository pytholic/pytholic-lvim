require("neo-tree").setup({
	close_if_last_window = false,
	window = {
		width = 30,
	},
	buffers = {
		follow_current_file = false,
	},
	filesystem = {
		follow_current_file = false,
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				"node_modules",
			},
			never_show = {
				".DS_Store",
				"thumbs.db",
			},
		},
	},
})
-- vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
-- vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
-- vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
-- vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
