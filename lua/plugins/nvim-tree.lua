return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		config = {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 40,
			},
			renderer = {
				group_empty = true,
			},
			update_focused_file = {
				enable = true,
				update_cwd = false,
				ignore_list = {},
			},
			git = {
				enable = true,
				ignore = false,
			},
		},
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
}
