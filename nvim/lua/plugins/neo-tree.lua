return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Open neo-tree
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", { noremap = true, silent = true })

		-- Close neo-tree
		vim.keymap.set("n", "<C-m>", ":Neotree close<CR>", { noremap = true, silent = true })
	end,
}
