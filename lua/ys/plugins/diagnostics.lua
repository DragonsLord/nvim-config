return {
	{
		"folke/trouble.nvim",
		dependecies = { "nvim-web-devicons" },
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>dd",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "[D]iagnostics",
			},
			{
				"<leader>db",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "[D]iagnostics for current [B]uffer",
			},
			{
				"<leader>ds",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "[D]iagnostics toggle [S]ymbols",
			},
			{
				"<leader>dL",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "[D]iagnostics [L]SP Definitions / references / ...",
			},
			{
				"<leader>dl",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "[D]iagnostics [L]ocation List",
			},
			{
				"<leader>dq",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "[D]iagnostics [Q]uickfix List",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		keys = {
			-- {
			-- 	"]t",
			-- 	function()
			-- 		require("todo-comments").jump_next()
			-- 	end,
			-- 	desc = "Next Todo Comment",
			-- },
			-- {
			-- 	"[t",
			-- 	function()
			-- 		require("todo-comments").jump_prev()
			-- 	end,
			-- 	desc = "Previous Todo Comment",
			-- },
			{ "<leader>dt", "<cmd>Trouble todo toggle<cr>", desc = "[D]iagnostics [T]odo list" },
			{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "[F]iles [T]odos" },
		},
	},
}
