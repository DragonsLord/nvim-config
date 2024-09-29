local M = {}

function M.go_to_config()
  local cwd = vim.fn.stdpath("config")
  vim.cmd.cd(cwd)
  require("telescope.builtin").git_files({
    prompt_title = "Config Files",
    recurse_submodules = true,
  })
end

return M
