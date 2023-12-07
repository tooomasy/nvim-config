return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup({
            default = {
                display = function (list_item)
                    local filePath = list_item.value
                    local fileName = vim.fn.fnamemodify(filePath, ':t')
                    return "[" .. fileName .. "] " .. filePath
                end,
            }
        })
        vim.keymap.set("n", "<leader>pm", function() harpoon:list():append() end)
        vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    end
}
