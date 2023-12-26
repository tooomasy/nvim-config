return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap" },
	config = function()
		require("dapui").setup({
			layouts = {
				{
					elements = {
						{
							id = "scopes",
							size = 0.75,
						},
						{
							id = "breakpoints",
							size = 0.25,
						},
						-- {
						-- 	id = "watches",
						-- 	size = 0.25,
						-- },
					},
					position = "left",
					size = 40,
				},
				{
					elements = {
						-- {
						-- 	id = "repl",
						-- 	size = 0.5,
						-- },
						-- {
						-- 	id = "console",
						-- 	size = 0.5,
						-- },
						{
							id = "stacks",
							size = 1,
						},
					},
					position = "bottom",
					size = 10,
				},
			},
		})

		local dap, dapui = require("dap"), require("dapui")
        local nvim_api = require "nvim-tree.api"
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
            nvim_api.tree.close()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
            nvim_api.tree.open()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
            nvim_api.tree.open()
		end
	end,
}
