vim.api.nvim_create_user_command('Cs', function(opts) require"persist.colorscheme".set(opts.args) end, { nargs = 1, complete = "color" })
