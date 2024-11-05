vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.background = "dark"

vim.lsp.inlay_hint.enable = true

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Enable true color support
vim.cmd('set termguicolors')

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Set line numbers
vim.opt.number = true

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Set the cursor line
vim.opt.cursorline = true

-- vim.cmd [[highlight CursorLine guibg=#a8a8a8]]

-- Enable mouse support
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Set clipboard to use the system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Enable persistent undo
vim.opt.undofile = true

-- Set split directions
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable backup and swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Enable sign column by default
vim.opt.signcolumn = 'yes'

-- Set scroll offset
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 12

-- Set tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.softtabstop = 4

-- Enable break indent
vim.opt.breakindent = true

-- Enable line wrapping
vim.opt.wrap = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable search highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

--highlight current search
vim.opt.guicursor = ""

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.termguicolors = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
