-- return {
-- 	{'williamboman/mason.nvim'},
-- 	{'williamboman/mason-lspconfig.nvim'},
-- 	{'neovim/nvim-lspconfig'},
-- 	{'hrsh7th/cmp-nvim-lsp'},
-- 	{'hrsh7th/nvim-cmp'},
-- 	{'L3MON4D3/LuaSnip'},
-- 	{
-- 		'VonHeikemen/lsp-zero.nvim',
-- 		branch = 'v3.x',
-- 		config = function()
-- 			local lsp_zero = require('lsp-zero')
--             lsp_zero.extend_lspconfig()
-- 			lsp_zero.on_attach(function(client, bufnr)
-- 				-- see :help lsp-zero-keybindings
-- 				-- to learn the available actions
-- 				lsp_zero.default_keymaps({buffer = bufnr})
-- 			end)
--
-- 			-- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
-- 			require('mason').setup({})
-- 			require('mason-lspconfig').setup({
-- 				ensure_installed = { "lua_ls" },
-- 				handlers = {
-- 					function(server_name)
-- 						require('lspconfig')[server_name].setup({})
-- 					end,
-- 				}
-- 			})
-- 		end
-- 	}
-- }

return {
	{ "williamboman/mason.nvim", opts = {} },
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
			automatic_installation = true,
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
