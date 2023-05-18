vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.opt.cursorline = true

lvim.transparent_window = true
lvim.format_on_save = true
-- Hide top bufferline
lvim.builtin.bufferline.active = false

-- Define autocmd to disable cursorline in insert mode
vim.cmd([[
  au InsertEnter * set nocursorline
  au InsertLeave * set cursorline
]])

-- clang formatter style set --
vim.cmd([[autocmd FileType cpp,c,h setlocal formatprg=clang-format\ --style=Google]])

-- vim.cmd([[highlight CursorLineNr guifg=#CD7F32]])
vim.cmd([[highlight CursorLineNr guifg=#C68642]])
-- vim.cmd("highlight LineNr guifg=#003366")
-- vim.cmd("highlight Comment guifg=#999999")

lvim.builtin.which_key.setup({
	layout_config = {
		center = {
			preview_cutoff = 120,
			max_width = 80, -- Adjust the value to your desired maximum width
		},
	},
})
