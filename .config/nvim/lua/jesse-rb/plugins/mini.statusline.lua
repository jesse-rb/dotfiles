return {
    "nvim-mini/mini.statusline",
    version = "*",
    dependencies = {
        "nvim-mini/mini.icons",
    },
    opts = {
        content = {
            active = function()
                local MiniIcons = require("mini.icons")

                local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
                local git = MiniStatusline.section_git({ trunc_width = 75 })
                local filename = MiniStatusline.section_filename({ trunc_width = 140 })
                local filetype = vim.bo.filetype

                -- get file type icon from mini.icons
                local filetype_icon, filetype_icon_hl =
                    require("mini.icons").get("file", vim.api.nvim_buf_get_name(0))

                return MiniStatusline.combine_groups({
                    { hl = mode_hl, strings = { mode } },
                    { hl = "MiniStatuslineDevinfo", strings = { git } },
                    { hl = "MiniStatuslineFilename", strings = { filename } },
                    {
                        hl = filetype_icon_hl or "MiniStatuslineFilename",
                        strings = { filetype_icon .. " " .. filetype },
                    },
                })
            end,
        },
    },
}
