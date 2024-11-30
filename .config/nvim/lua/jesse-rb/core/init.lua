require('jesse-rb.core.base')
require('jesse-rb.core.keymaps')

local has = function(x)
	return vim.fn.has(x) == 1
end

-- Determine os

local is_mac = has "macunix"
local is_win = has "win32"
local is_unix = has "unix"
local is_wsl = has "wsl"

-- Load some deps depending on os e.g. nvim clipboard settings

if is_mac then
    require('jesse-rb.os.macos')
end

if is_win then
    require('jesse-rb.os.windows')
end

if (is_unix) then
    require('jesse-rb.os.unix')
end

if (is_wsl) then
    require('jesse-rb.os.wsl')
end
