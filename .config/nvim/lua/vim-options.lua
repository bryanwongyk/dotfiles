-- format tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- format line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- reveal current file in Finder by typing :Open
vim.api.nvim_create_user_command('Open',
    function()
        local path = vim.api.nvim_buf_get_name(0)
        os.execute('open -R ' .. path)
    end,
    {}
)

