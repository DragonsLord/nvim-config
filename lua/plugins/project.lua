return {
  "coffebar/neovim-project",
  opts = {
    projects = {
      "/mnt/d/Projects/*",
      "~/.config/nvim"
    }
  },
  keys = {
    {
      "<leader>pl",
      "<cmd>Telescope neovim-project discover<cr>",
      mode = { "n" },
      desc = "[P]rojects [L]ist"
    },
    {
      "<leader>ph",
      mode = { "n" },
      "<cmd>Telescope neovim-project history<cr>",
      desc = "[P]rojects [H]istory",
    },
    {
      "<leader>pr",
      mode = { "n" },
      "<cmd>NeovimProjectLoadRecent<cr>",
      desc = "[P]rojects [R]ecent",
    }
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  }
}
