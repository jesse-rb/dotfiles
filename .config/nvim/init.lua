print('hello nvim')
require('base')
require('highlights')
require('plugins')
require('maps')

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"
local is_unix = has "unix"
local is_wsl = has "wsl"

if is_mac then
    print('is mac')
    require('macos')
end

if is_win then
    print('is win')
    require('windows')
end

if (is_unix) then
    print('is unix')
    require('unix')
end

if (is_wsl) then
    print('is wsl')
    require('wsl')
end
