return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		opts = {},
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "[F]iles in [G]it" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "[F]iles [S]earch" })
		end,
	},
}
