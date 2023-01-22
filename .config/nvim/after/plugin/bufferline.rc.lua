require("bufferline").setup {
  options = {
    separator_style = "slant",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
  },
  highlights = {
    separator_selected = {
      fg = '#292D3E',
      bg = '#424861'
    },
    separator_visible = {
      fg = '#292D3E',
      bg = '#1B1E2B'
    },
    separator = {
      fg = '#292D3E',
      bg = '#1B1E2B'
    },
    background = {
      fg = '#ffffff',
      bg = '#1B1E2B'
    },
    buffer_visible = {
      fg = '#ffffff',
      bg = '#1B1E2B'
    },
    buffer_selected = {
      fg = '#FFFFFF',
      bg = '#424861'
    }
  }
}
