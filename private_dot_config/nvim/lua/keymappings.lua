-- various mappings

vim.keymap.set({ "n", "v", "i" }, "<F1>", "<cmd>w<cr>")
vim.keymap.set("n", " w", "<C-w><C-w>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("i", "jk", "<Esc>")

-- arrows mappings

vim.keymap.set({ "n", "v" }, "<Up>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Down>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Left>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Right>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageUp>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageDown>", "<Ignore>")

-- plugin mappings

vim.keymap.set({ "n", "v" }, " t", "<cmd>TerminalToggle<cr>")
vim.keymap.set({ "n", "v" }, " f", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set({ "n", "v" }, " r", "<cmd>QuickRun<cr>")
