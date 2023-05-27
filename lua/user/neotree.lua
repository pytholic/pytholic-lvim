require("neo-tree").setup({
	close_if_last_window = true,
	window = {
		width = 30,
	},
	buffers = {
		follow_current_file = true,
	},
	filesystem = {
		follow_current_file = true,
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
