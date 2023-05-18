reload("user.config")

-- Disable virtual text diagnostics
vim.diagnostic.config({ virtual_text = false })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ name = "black" },
	{ name = "stylua" },
	{ name = "clang_format" },
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
	{ name = "flake8", filetypes = { "python" } },
	{
		name = "shellcheck",
		args = { "--severity", "warning" },
	},
	{ name = "cpplint", filetypes = { "cpp" } },
})

local clangd_flags = {
	"--all-scopes-completion",
	"--suggest-missing-includes",
	"--background-index",
	"--pch-storage=disk",
	"--cross-file-rename",
	"--log=info",
	"--completion-style=detailed",
	"--enable-config", -- clangd 11+ supports reading from .clangd configuration file
	"--clang-tidy",
	"--offset-encoding=utf-16", --temporary fix for null-ls
	"--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
	"--fallback-style=Google",
	"--header-insertion=never",
	"--query-driver=<list-of-white-listed-complers>",
}

local clangd_bin = "clangd"

local opts = {
	cmd = { clangd_bin, unpack(clangd_flags) },
}
require("lvim.lsp.manager").setup("clangd", opts)

-- Additional plugins
lvim.plugins = {
	{ "folke/trouble.nvim" },
	{ "theprimeagen/harpoon" },
	{ "CRAG666/code_runner.nvim" },
	{ "mg979/vim-visual-multi", branch = "master" },
	{ "mfussenegger/nvim-dap" },
	{ "mfussenegger/nvim-dap-python" },
	{ "AckslD/swenv.nvim" },
	{ "stevearc/dressing.nvim" },
}
