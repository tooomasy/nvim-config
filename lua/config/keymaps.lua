local keymap = vim.keymap

-- NvimTree
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

-- Indenting
keymap.set("v", "<", "<gv") -- Shift Indentation to Left
keymap.set("v", ">", ">gv") -- Shift Indentation to Right

-- Comments
vim.api.nvim_set_keymap("n", "<C-c>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-c>", "gcc", { noremap = false })

-- Formatter.nvim
keymap.set("n", "<leader>f", ":FormatWrite<CR>", { noremap = true, silent = true })

-- nvim-dap / nvim-dap-ui
keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>dt", ":DapTerminate<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true, silent = true })
