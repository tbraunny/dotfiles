vim.wo.number = true -- Make line numbers default
vim.o.relativenumber = true -- Relative line numbers
vim.opt.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.linebreak = true
vim.o.mouse = 'a'
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true -- Convert tabs into spaces
vim.o.breakindent = true -- enable break indent (?)
vim.o.undofile = true -- save undo history
vim.o.signcolumn = 'yes' -- (?)
vim.o.smartindent = true
-- vim.o.showmode = false -- disable showing '--INSERT--'

--vim.o.updatetime = 250 -- configure mapped sequence
--vim.o.timeoutlen = 300 -- timing

vim.o.completeopt = 'menuone,noselect'
vim.o.whichwrap = 'bs<>[]hl' -- keys alowed to travel prev/next line
vim.o.scrolloff = 4 -- lines to keep above and below cursor

vim.o.pumheight = 10 -- pop up menu height
vim.o.cmdheight = 1 -- more space in command line for messages
vim.opt.iskeyword:append '-' -- hyphenated words recognized by search
