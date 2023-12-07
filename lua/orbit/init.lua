local lush = require('lush')

local base = require('orbit.base')
local ts = require('orbit.hi.treesitter')

return lush.merge {
    base, ts
}
