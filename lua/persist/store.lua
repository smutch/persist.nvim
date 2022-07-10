local M = {}

local opts = require "persist".opts
local toml = require "toml"

function M.read()
    local store = nil
    if opts.config_file:exists() then
        local success = false
        local tomlStr = opts.config_file:read()
        success, store = pcall(toml.decode, tomlStr)

        if not success then
            vim.api.nvim_err_writeln("Failed to decode " .. opts.config_file)
        end

    end

    return store
end

function M.write(content)
    local success, tomlStr = pcall(toml.encode, content)
    if not success then
        vim.api.nvim_err_writeln("Failed to encode content.")
        return false
    end

    opts.config_file:write(tomlStr, "w")

    return true
end

return M
