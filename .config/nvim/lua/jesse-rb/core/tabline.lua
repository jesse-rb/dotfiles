-- We create a table that will hold everything this module exports.
-- Think of this like an object or namespace.
local M = {}

-- This function will be called by Neovim every time it redraws the tabline.
-- It must RETURN a string that Neovim understands.
function M.render()
    -- This string will be built up piece-by-piece.
    local tabline = ""

    -- Get a list of all buffer numbers known to Neovim
    for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
        -- Only show buffers that are "listed"
        -- (this hides help buffers, terminals, etc.)
        if vim.bo[bufnr].buflisted then
            -- Get the full path of the buffer
            local full_name = vim.api.nvim_buf_get_name(bufnr)

            -- Reduce it to just the filename (no directories)
            local name = vim.fn.fnamemodify(full_name, ":t")

            -- If the buffer has no name (new/empty buffer),
            -- show a friendly placeholder instead
            if name == "" then
                name = "[No Name]"
            end

            -- If this buffer is the currently active buffer,
            -- use the "selected" highlight group
            if bufnr == vim.api.nvim_get_current_buf() then
                tabline = tabline .. "%#TabLineSel#"
            else
                -- Otherwise, use the normal tabline highlight
                tabline = tabline .. "%#TabLine#"
            end

            -- Add the buffer name with some spacing
            tabline = tabline .. " " .. name .. " "
        end
    end

    -- Fill the rest of the tabline with the default background
    tabline = tabline .. "%#TabLineFill#"

    -- Neovim uses whatever string we return as the tabline
    return tabline
end

-- Return the module table so it can be required elsewhere
return M
