return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,

	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			transparent_mode = true,
			strikethorugh = true,
			bold = true,
		})

		vim.o.background = "dark"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
