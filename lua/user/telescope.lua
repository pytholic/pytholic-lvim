local builtin = require("telescope.builtin")

lvim.builtin.which_key.mappings["f"] = {}
lvim.lsp.buffer_mappings.normal_mode["gr"] = nil
lvim.keys.normal_mode["<leader>ff"] = { builtin.find_files, {} }
lvim.keys.normal_mode["<leader>fg"] = { builtin.grep_string, {} }
lvim.keys.normal_mode["<leader>fb"] = { builtin.buffers, {} }
lvim.keys.normal_mode["<leader>fh"] = { builtin.help_tags, {} }
-- Keymap for running Telescope lsp_references with show_line=false
lvim.keys.normal_mode["gr"] = "<cmd>Telescope lsp_references show_line=false<CR>"

lvim.builtin.telescope = {
	theme = "center",
	defaults = {
		layout_config = {
			height = 0.8, -- adjust the height of the results window
			width = 0.8, -- adjust the width of the results window
		},
	},
}
