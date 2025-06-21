local get_format_callback = function(bufnr)
	local client = vim.lsp.get_clients({ name = "roslyn" })[1]
	if not client then
		return nil
	end

	-- detaching current buffer during formatting because
	-- roslyn LS might fail dur to line count changes or smth like that
	vim.lsp.buf_detach_client(bufnr, client.id)

	return function()
		vim.lsp.buf_attach_client(bufnr, client.id)
	end
end

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>cf",
			function()
				require("conform").format({ async = true }, get_format_callback(vim.api.nvim_get_current_buf()))
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
			cs = { "csharpier", lsp_format = "first" },
			md = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			yaml = { "prettier" },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
		format_on_save = function(bufnr)
			return { timeout_ms = 1000 }, get_format_callback(bufnr)
		end,
		-- Customize formatters
		formatters = {
			csharpier = {
				command = "dotnet-csharpier",
				args = { "--skip-write" },
			},
		},
	},
	-- init = function()
	--   -- If you want the formatexpr, here is the place to set it
	--   vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	-- end,
}
