return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local install = require("nvim-treesitter.install")
		install.prefer_git = false
		install.compilers = { "zig", "gcc" }
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "javascript", "typescript" },
			sync_install = false,
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.fsharp = {
			install_info = {
				url = "https://github.com/ionide/tree-sitter-fsharp",
				branch = "main",
				files = { "src/scanner.c", "src/parser.c" },
				location = "fsharp",
			},
			requires_generate_from_grammar = false,
			filetype = "fsharp",
		}
	end,
}
