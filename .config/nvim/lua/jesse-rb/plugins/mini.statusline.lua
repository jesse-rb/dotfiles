return {
    "nvim-mini/mini.statusline",
    version = "*",
    opts = {
        content = {
            active = function()
                local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
                local git = MiniStatusline.section_git({ trunc_width = 75 })
                local filename = MiniStatusline.section_filename({ trunc_width = 140 })
                local filetype = vim.bo.filetype

                return MiniStatusline.combine_groups({
                    { hl = mode_hl, strings = { mode } },
                    { hl = "MiniStatuslineDevinfo", strings = { git } },
                    { hl = "MiniStatuslineFilename", strings = { filename, filetype } },
                })
            end,
        },
    },
}
