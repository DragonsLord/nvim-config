return {
	{
		"williamboman/mason.nvim",
		opts = {},
		dependencies = {
			-- dotnet roslyn language server
			{
				"seblj/roslyn.nvim",
				ft = "cs",
				opts = {
					-- Avoiding Error:
					-- ...m/lsp/client.lua:974	"LSP[roslyn]"	"on_error"	{  code = "SERVER_REQUEST_HANDLER_ERROR",  err = "...ogram Files/Neovim/share/nvim/runtime/lua/vim/_watch.lua:99: ENOENT: no such file or directory"}
					filewatching = false,
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
			automatic_installation = true,
			handlers = {
				function(server_name) -- default handler (optional)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]o to [R]eferences" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
			vim.keymap.set({ "n", "v" }, "<leader>cr", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
		end,
	},
}
