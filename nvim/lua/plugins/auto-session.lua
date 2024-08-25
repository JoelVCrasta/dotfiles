return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},
			auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
			vim.keymap.set("n", "<Leader>ss", require("auto-session.session-lens").search_session, {
				noremap = true,
			}),
		})
	end,
}
