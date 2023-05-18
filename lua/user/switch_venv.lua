require("swenv").setup({
	post_set_env = function()
		vim.cmd("LspRestart")
	end,
})

lvim.keys.normal_mode["ce"] = "<cmd>lua require('swenv.api').pick_venv()<cr>"
