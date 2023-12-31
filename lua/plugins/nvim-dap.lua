return {
    'mfussenegger/nvim-dap',
    lazy = false,
    config = function ()
        local dap = require('dap')
        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
                command = '/home/tooomas/.local/share/nvim/mason/bin/codelldb',
                args = {"--port", "${port}"},
            }

        }
        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = true,
            },
        }
    end
}
