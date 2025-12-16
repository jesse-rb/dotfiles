-- bootstrap lazy.nvim plugins
require("config.lazy")

-- bootstrap autogroups
require("config.autocmds")

-- bootstrap lsp
require("config.lsp")

-- bootstrap my customizations
require("jesse-rb.core")

vim.cmd[[colorscheme tokyonight]]
