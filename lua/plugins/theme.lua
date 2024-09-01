return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    terminal_colors = true,
    style = "storm",
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_colors = function(colors)
      local status, wallust = pcall(require, "gen.wallust")
      if status then
        wallust.apply_colors(colors)
      end
    end,
  },
}
