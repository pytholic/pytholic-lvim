vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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

-- Disable virtual text diagnostics
vim.diagnostic.config({ virtual_text = false })

-- Next line comment continues
vim.cmd("autocmd Filetype * setlocal formatoptions-=ro")
