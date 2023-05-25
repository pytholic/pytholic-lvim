lvim.leader = "space"

lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.keys.normal_mode["<c-s>"] = ":w<cr>"

lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"

lvim.keys.visual_mode["="] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["-"] = ":m '<-2<CR>gv=gv"

lvim.keys.normal_mode["<leader>\\"] = ":vsplit<CR>"
lvim.keys.visual_mode["<leader>p"] = [["_dP]] -- paste and keep
lvim.keys.normal_mode["<leader>y"] = [["+y]]
lvim.keys.visual_mode["<leader>y"] = [["+y]]
lvim.keys.normal_mode["<leader>Y"] = [["+Y]]
lvim.keys.normal_mode["<leader>d"] = [["_d]]
lvim.keys.insert_mode["<C-c>"] = "<Esc>"
lvim.keys.normal_mode["Q"] = "<nop>"

-- grep remap
lvim.keys.normal_mode["<leader>vg"] = [[:vimgrep // %:p<Left><Left><Left><Left><Left>]]

-- Quickfix navigation
lvim.keys.normal_mode["."] = "<cmd>cnext<CR>zz"
lvim.keys.normal_mode[","] = "<cmd>cprev<CR>zz"
lvim.keys.normal_mode["<leader>k"] = "<cmd>lnext<CR>zz"
lvim.keys.normal_mode["<leader>j"] = "<cmd>lprev<CR>zz"

-- Find and replace
lvim.keys.normal_mode["<leader>fr"] = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

-- Make file executable
lvim.keys.normal_mode["<leader>x"] = "<cmd>!chmod +x %<CR>"

-- Visual mode indent
lvim.keys.visual_mode["<Tab>"] = ">gv"
lvim.keys.visual_mode["<S-Tab>"] = "<gv"

-- Swap splits
lvim.keys.normal_mode["<C-w><S-Left>"] = "<C-w>H"
lvim.keys.normal_mode["<C-w><S-Right>"] = "<C-w>L"
lvim.keys.normal_mode["<C-w><S-Up>"] = "<C-w>K"
lvim.keys.normal_mode["<C-w><S-Down>"] = "<C-w>J"

-- coderunner
-- lvim.keys.normal_mode["r"] = false
-- LunarVim key mappings
lvim.keys.normal_mode["<leader>rc"] = { ":RunCode<CR>", { silent = false } }
lvim.keys.normal_mode["<leader>rf"] = { ":RunFile<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>rft"] = { ":RunFile tab<CR>", { silent = false } }
lvim.keys.normal_mode["<leader>rp"] = { ":RunProject<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>rc"] = { ":RunClose<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>crf"] = { ":CRFiletype<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>crp"] = { ":CRProjects<CR>", { silent = false } }

-- cmake and make keymaps --
lvim.builtin.which_key.mappings["c"] = {}
-- Keymap for running 'cmake -S . -B build'
lvim.keys.normal_mode["<leader>cm"] = ":!cmake -S . -B build<CR>"
-- Keymap for running 'make -C build'
-- lvim.keys.normal_mode["<leader>mk"] = ":!make -C build<CR>"
lvim.keys.normal_mode["<leader>mk"] = ":!cmake --build ./build<CR>"

-- Buffer close --
lvim.keys.normal_mode["<c-q>"] = { ":BufferKill<CR>", { silent = false } }
