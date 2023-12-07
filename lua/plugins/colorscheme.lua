return {
    {
        "rockyzhang24/arctic.nvim",
        branch = "v2",
        dependencies = { "rktjmp/lush.nvim" },
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function ()
            local lush = require("lush")
            local theme = require("lush_theme.arctic")

            local darkBg = '#181818'
            local darkYello = "#e2c08d"
            local lightGreen = "#73c991"

            local spec = lush.extends({theme}).with(function ()
                return {
                    EndOfBuffer { fg = darkBg },
                    NvimTreeNormal { bg = darkBg },
                    NvimTreeFolderName { fg = theme.Normal.fg },
                    NvimTreeGitDirty { fg = darkYello },
                    NvimTreeGitNew = { fg = lightGreen },
                    NvimTreeGitDeleted = { fg = theme.ErrorMsg.fg },
                }
            end)
            lush(spec)
        end
    },
}
