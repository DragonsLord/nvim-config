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
  end,
}
