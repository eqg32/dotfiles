-- various mappings

vim.keymap.set({ "n", "v", "i" }, "<F1>", "<Cmd>w<CR>")
vim.keymap.set("n", "<M-w>", "<C-w><C-w>")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "je", "<C-o>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- disabling arrows

vim.keymap.set({ "n", "v" }, "<Up>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Down>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Left>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Right>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageUp>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageDown>", "<Ignore>")
