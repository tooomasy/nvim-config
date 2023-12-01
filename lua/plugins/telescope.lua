return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        require('telescope').load_extension('fzf')
    end,
    keys = {
        vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
    }
}
