local dap, dapui = require('dap'), require('dapui')

-- PHP config
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

-- Go config
dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = { vim.fn.stdpath('data') .. '/mason/packages/go-debug-adapter/extension/dist/debugAdapter.js'};
}
dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = false;
    program = "${file}";
    dlvToolPath = vim.fn.exepath('dlv')
  },
}

-- Setup dap extension plugins
require('nvim-dap-virtual-text').setup()
require('dapui').setup()

-- Open/close dapui on dap events
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
