local M = {}

local store = require "persist.store"

function M.set(scheme)
    if scheme == nil then
        local settings = store.read()
        if settings == nil then return end
        scheme = settings.colorscheme
    end

    vim.cmd("colorscheme " .. scheme)

    local settings = store.read()
    if settings == nil then
        settings = {}
    end

    settings.colorscheme = scheme

    store.write(settings)
end

return M
