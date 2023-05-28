require("code_runner").setup({
	mode = "toggleterm",
	-- put here the commands by filetype
	filetype = {
		java = {
			"cd $dir &&",
			"javac $fileName &&",
			"java $fileNameWithoutExt",
		},
		python = "python3 -u",
		typescript = "deno run",
		rust = {
			"cd $dir &&",
			"rustc $fileName &&",
			"$dir/$fileNameWithoutExt",
		},
		cpp = {
			"cd $dir &&",
			"clang++ -std=c++20 -Wno-c++98-compat -Weverything $file -o $fileNameWithoutExt &&",
			"$dir/$fileNameWithoutExt",
		},
	},
})
