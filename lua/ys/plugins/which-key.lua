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
        { "<leader>f", group = "[F]iles" },
        { "<leader>g", group = "[G]it" },
        { "<leader>c", group = "[C]ode" },
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
