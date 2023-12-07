return {
    'stevearc/aerial.nvim',
    lazy = false,
    opts = {},
    -- Optional dependencies
    dependencies = {
        -- "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },

    config = function ()
        local aerial = require("aerial")
        aerial.setup({
            backends = { "lsp", "markdown", "man" },
            -- optionally use on_attach to set keymaps when aerial has attached to a buffer
            on_attach = function(bufnr)
                vim.keymap.set("n", "{", function ()
                    if aerial.is_open() then
                        aerial.prev()
                    else
                        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('{', true, false, true), 'n', true)
                    end
                end, { buffer = bufnr })
                vim.keymap.set("n", "}", function ()
                    if aerial.is_open() then
                        aerial.next()
                    else
                        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('}', true, false, true), 'n', true)
                    end
                end, { buffer = bufnr })
            end,
            layout = {
                max_width = { 40 },
                min_width = 40
            }
        })
        -- You probably also want to set a keymap to toggle aerial
        vim.keymap.set("n", "<leader>t", "<cmd>AerialToggle!<CR>")
    end
}
