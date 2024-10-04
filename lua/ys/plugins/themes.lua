return {
  {
    "Yazeed1s/oh-lucy.nvim",
    config = function()
      vim.g.oh_lucy_transparent_background = true
      -- vim.cmd('colorscheme oh-lucy')
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
      style = "storm",
      styles = {
        sidebars = "transparent",
        floats = "dark",
        comments = { italic = true },
        keywords = { italic = false },
      },
      on_colors = function(colors)
        local status, wallust = pcall(require, "gen.wallust")
        if status then
          wallust.apply_colors(colors)
        end
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
      styles = {
        comments = { "italic" },
      },
    },
  },
}
