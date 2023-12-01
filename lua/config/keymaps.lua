local keymap = vim.keymap

-- NvimTree
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

-- Indenting
keymap.set("v", "<", "<gv") -- Shift Indentation to Left
keymap.set("v", ">", ">gv") -- Shift Indentation to Right

-- Comments
vim.api.nvim_set_keymap("n", "<C-c>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-c>", "gcc", { noremap = false })
