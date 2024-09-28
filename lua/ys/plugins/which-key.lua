return {
	"folke/which-key.nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"echasnovski/mini.icons",
	},
	opts = {
		spec = {
			{
				mode = { "n", "v" },
				{ "<leader>f", group = "[F]ind" },
				{ "<leader>g", group = "[G]it" },
			},
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Show Local Buffer Keymaps",
		},
	},
}
