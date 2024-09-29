return {
	"folke/persistence.nvim",
	opts = {},
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	keys = {
		{
			"<leader>ss",
			function()
				require("persistence").select()
			end,
			desc = "[S]elect [S]ession",
		},
		{
			"<leader>sr",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "[R]estore Last [S]ession",
		},
		{
			"<leader>sd",
			function()
				require("persistence").stop()
			end,
			desc = "[D]on't Save Current [S]ession",
		},
	},
}
