return {
	"stevearc/conform.nvim",
	-- optional = true,
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>cf",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "[C]ode [F]ormat",
		},
	},
	-- This will provide type hinting with LuaLS
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			cs = { "csharpier" },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500 },
		-- Customize formatters
		formatters = {
			csharpier = {
				command = "dotnet-csharpier",
				args = { "--write-stdout" },
			},
		},
	},
	-- init = function()
	--   -- If you want the formatexpr, here is the place to set it
	--   vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	-- end,
}
