require("catppuccin").setup({
	term_colors = true,
	transparent_background = true,
	color_overrides = {
		mocha = {
			base = "#000000",
		},
	},
})

vim.cmd.colorscheme("catppuccin")
