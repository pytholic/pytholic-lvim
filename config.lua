reload("user.config")

lvim.builtin.lualine.style = "lvim"

-- -- Colorscheme
lvim.colorscheme = "rose-pine"
require("rose-pine").setup({
	variant = "moon",
})

-- Tekescope and Hover colors
local myTelescopeTheme = {
	-- Define colors for different components
	prompt = "#FF8800", -- Color for the prompt
	selection = "#51AFEF", -- Color for selected items
	border = "#87CEEB", -- Color for borders
	results_bg = "#202328", -- Background color for results
	preview_bg = "#1C1F24", -- Background color for previews
	preview_border = "#87CEEB", -- Color for preview borders
	match_color = "#F89880",
}

lvim.autocommands = {
	{
		{ "ColorScheme" },
		{
			pattern = "*",
			callback = function()
				-- Define highlighting groups using vim.api.nvim_set_hl
				local hl = vim.api.nvim_set_hl

				-- Prompt
				hl(0, "TelescopePrompt", { foreground = myTelescopeTheme.prompt })

				-- Selection
				hl(0, "TelescopeSelection", { foreground = myTelescopeTheme.selection, bold = true })
				hl(0, "TelescopeMatching", { foreground = myTelescopeTheme.match_color })

				-- Border
				hl(0, "TelescopeBorder", { foreground = myTelescopeTheme.border })

				-- Results
				hl(0, "TelescopeResultsNormal", { background = myTelescopeTheme.results_bg })
				hl(0, "TelescopeResultsBorder", { foreground = myTelescopeTheme.border })
				hl(0, "TelescopeResultsMatch", { foreground = myTelescopeTheme.selection, bold = true })

				-- Previews
				hl(0, "TelescopePreviewNormal", { background = myTelescopeTheme.preview_bg })
				hl(0, "TelescopePreviewBorder", { foreground = myTelescopeTheme.preview_border })

				hl(0, "NormalFloat", { bg = "#1C1F24" })
				hl(0, "FloatBorder", { fg = "#87CEEB", bg = "#16161e" })
				hl(0, "WhichKeyFloat", { bg = "#16161e" })
			end,
		},
	},
}

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
	{ "rose-pine/neovim" },
}
