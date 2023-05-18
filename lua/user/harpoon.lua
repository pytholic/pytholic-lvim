local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

lvim.keys.normal_mode["<leader>a"] = mark.add_file
lvim.keys.normal_mode["<C-h>"] = ui.toggle_quick_menu
lvim.keys.normal_mode["<C-p>"] = function()
	ui.nav_file(1)
end
lvim.keys.normal_mode["<C-[>"] = function()
	ui.nav_file(2)
end
lvim.keys.normal_mode["<C-]>"] = function()
	ui.nav_file(2)
end
lvim.keys.normal_mode["<C->"] = function()
	ui.nav_file(2)
end
