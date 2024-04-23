-- various mappings

vim.keymap.set({ "n", "v", "i" }, "<F1>", "<cmd>w<cr>")
vim.keymap.set("n", "<M-w>", "<C-w><C-w>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set({ "v", "i" }, "jk", "<Esc>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("i", "jj", "<C-o>")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")

-- disabling arrows

vim.keymap.set({ "n", "v" }, "<Up>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Down>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Left>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Right>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageUp>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageDown>", "<Ignore>")

-- plugins

vim.keymap.set({ "n", "v", "i" }, "<M-t>", "<cmd>TerminalToggle<cr>")
vim.keymap.set({ "n", "v", "i" }, "<M-r>", "<cmd>QuickRun<cr>")
