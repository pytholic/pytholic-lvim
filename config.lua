reload("user.config")

-- Disable virtual text diagnostics
vim.diagnostic.config({ virtual_text = false })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ name = "black" },
	{ name = "stylua" },
	{
		name = "prettier",
		---@usage arguments to pass to the formatter
		-- these cannot contain whitespace
		-- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
		args = { "--print-width", "100" },
		---@usage only start in these filetypes, by default it will attach to all filetypes it supports
		filetypes = { "typescript", "typescriptreact", "javascript" },
	},
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ name = "flake8" },
	{
		name = "shellcheck",
		args = { "--severity", "warning" },
	},
})

-- Additional plugins
lvim.plugins = {
	{ "folke/trouble.nvim" },
	{ "theprimeagen/harpoon" },
	{ "CRAG666/code_runner.nvim" },
	{ "mg979/vim-visual-multi", branch = "master" },
	{ "mfussenegger/nvim-dap" },
	{ "mfussenegger/nvim-dap-python" },
}
