return {
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        config = {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            update_focused_file = {
                enable = true,
                update_cwd = false,
                ignore_list = {},
            },
        }
    },
    {
        "nvim-tree/nvim-web-devicons"
    }
}
