local nord = {
	--16 colors
	black = "#2e3440", -- nord0 in palette
	dark_gray = "#3b4252", -- nord1 in palette
	gray = "#434c5e", -- nord2 in palette
	light_gray = "#4c566a", -- nord3 in palette
	light_gray_bright = "#616e88", -- out of palette
	darkest_white = "#d8dee9", -- nord4 in palette
	darker_white = "#e5e9f0", -- nord5 in palette
	white = "#eceff4", -- nord6 in palette
	teal = "#8fbcbb", -- nord7 in palette
	off_blue = "#88c0d0", -- nord8 in palette
	glacier = "#81a1c1", -- nord9 in palette
	blue = "#5e81ac", -- nord10 in palette
	red = "#bf616a", -- nord11 in palette
	orange = "#d08770", -- nord12 in palette
	yellow = "#ebcb8b", -- nord13 in palette
	green = "#a3be8c", -- nord14 in palette
	purple = "#b48ead", -- nord15 in palette
	none = "none",
	light_orange = "#f89880",
}

lvim.autocommands = {
	{
		{ "ColorScheme" },
		{
			pattern = "*",
			callback = function()
				-- Define highlighting groups using vim.api.nvim_set_hl
				local hl = vim.api.nvim_set_hl

				-- Telscope
				-- hl(0, "TelescopeSelection", { link = "Visual" })
				-- hl(0, "TelescopeSelectionCaret", { fg = colors.red, bg = colors.bg_visual })
				hl(0, "TelescopeMatching", { fg = nord.light_orange, bg = nord.none, bold = true, italic = true })
				-- hl(0, "TelescopeBorder", { fg = colors.border })
				-- hl(0, "TelescopeNormal", { fg = colors.fg, bg = colors.bg_dark })
				-- hl(0, "TelescopePromptTitle", { fg = colors.orange, bg = "NONE" })
				-- hl(0, "TelescopePromptNormal", { bg = "NONE" })
				-- hl(0, "TelescopePromptPrefix", { fg = colors.magenta, bg = "NONE" })
				-- hl(0, "TelescopeResultsTitle", { fg = colors.orange, bg = "NONE" })
				-- hl(0, "TelescopePreviewTitle", { fg = colors.orange, bg = "NONE" })
				hl(0, "TelescopePromptCounter", { fg = nord.light_orange })
				-- hl(0, "TelescopePreviewHyphen", { fg = colors.red, bg = "NONE" })

				-- Rest
				-- hl(0, "NormalFloat", { bg = "#1C1F24" })
				hl(0, "FloatBorder", { fg = nord.darkest_white })
				hl(0, "WhichKeyFloat", { fg = nord.darkest_white, bg = nord.none })
				hl(0, "NormalFloat", { fg = nord.darkest_white, bg = nord.none })

				-- Highlight occurences vim-illuminate
				hl(0, "IlluminatedWordText", { fg = nord.white, bg = nord.light_gray })
				hl(0, "IlluminatedWordRead", { fg = nord.white, bg = nord.light_gray })
				hl(0, "IlluminatedWordWrite", { fg = nord.white, bg = nord.light_gray })

				hl(0, "Visual", { fg = nord.white, bg = nord.blue })
			end,
		},
	},
}
