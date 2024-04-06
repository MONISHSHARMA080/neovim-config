---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"


local disabled_plugins = require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins

M.lazy_nvim = {
    performance = {
           rtp = {
             disabled_plugins = vim.tbl_filter(function(x)
                               return x ~= "tutor"
                                     end, disabled_plugins),
              },
    },
}

return M
