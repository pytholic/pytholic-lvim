require("todo-comments").setup({})

lvim.lsp.buffer_mappings.normal_mode["<leader>lt"] = nil
lvim.keys.normal_mode["<leader>lt"] = ":TodoTelescope<CR>"
