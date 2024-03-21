-- various mappings

vim.keymap.set({ "n", "v", "i" }, "<F1>", "<cmd>w<cr>")
vim.keymap.set("n", "<M-w>", "<C-w><C-w>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- arrows mappings

vim.keymap.set({ "n", "v" }, "<Up>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Down>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Left>", "<Ignore>")
vim.keymap.set({ "n", "v" }, "<Right>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageUp>", "<Ignore>")
vim.keymap.set({ "n", "v", "i" }, "<PageDown>", "<Ignore>")

-- plugin mappings

vim.keymap.set({ "n", "v" }, "<M-f>", "<cmd>TerminalToggle<cr>")
vim.keymap.set({ "n", "v" }, "<M-g>", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set({ "n", "v" }, "<M-r>", "<cmd>QuickRun<cr>")
