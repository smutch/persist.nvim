local M = {}

local path = require "plenary.path"

M.opts = {}

local defaults = {
    config_file = path.new(vim.api.nvim_list_runtime_paths()[1]) / "persist.toml"
}

function M.setup(opts)
    if opts and type(opts.config_file) == "string" then
        opts.config_file = path.new(opts.config_file)
    end

    M.opts = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

M.setup()

return M
