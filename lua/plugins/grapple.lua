return {
    "cbochs/grapple.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function ()
        vim.keymap.set("n", "<leader>pm", function ()
            local bufnr = vim.api.nvim_get_current_buf()
            local filename = vim.api.nvim_buf_get_name(bufnr)
            local base_name = vim.fn.fnamemodify(filename, ':t')
            require("grapple").toggle({ key = base_name })
        end)
        vim.keymap.set("n", "<leader>m", function ()
            require("grapple").popup_tags()
        end)
    end
}
