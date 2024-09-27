vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "[F]ile [E]xplorer" })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- do not replace the yank work with pasting over
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "[P]aste without pasting over" })

-- start replace op on the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace On Current Word" })

-- save current buffer
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
