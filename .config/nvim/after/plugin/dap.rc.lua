local dap, dapui = require('dap'), require('dapui')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { vim.fn.stdpath('data') .. '/mason/packages/php-debug-adapter/extension/out/phpDebug.js' }
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003,
    },
    {
        type = 'php',
        request = 'launch',
        name = 'Run Current Script',
        port = 9003,
        cwd = '{$fileDirname}',
        program = '{$file}',
        runtimeExecutable = 'php'
    }
}

require('nvim-dap-virtual-text').setup()
require('dapui').setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
