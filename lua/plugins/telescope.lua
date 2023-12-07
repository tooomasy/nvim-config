return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        require('telescope').load_extension('fzf')

        local builtin = require('telescope.builtin')
        vim.keymap.set("n", "<C-p>", builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
    end
}
