-- General
-- =======
-- set how many lines of history vim has to remember
vim.opt.history = 500

-- welcome to the future (nocompatible is default in Neovim and not needed)
-- vim.opt.compatible = false -- Usually commented out or omitted

-- enable filetype detection, plugins, and indentation
-- These are often enabled by default in Neovim, but explicitly setting is fine.
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on") -- You could also potentially use vim.filetype.enable()

-- set leader key
vim.g.mapleader = ","

-- Map leader + w to write buffer
-- vim.keymap.set(mode, lhs, rhs, opts)
-- mode: 'n' for normal mode
-- lhs: '<leader>w' the key sequence
-- rhs: ':w!<CR>' the command to execute (:w! followed by Enter)
-- opts: { noremap = true } ensures it's a non-recursive mapping
vim.keymap.set("n", "<leader>w", ":w!<CR>", { noremap = true, silent = true, desc = "Force write buffer" }) -- Added silent and desc for good practice

-- Ui Settings
-- ===========

-- set 7 lines context above/below cursor when scrolling
vim.opt.scrolloff = 7

-- Enable command-line completion menu
vim.opt.wildmenu = true

-- Show cursor position
vim.opt.ruler = true

-- Height of the command bar
vim.opt.cmdheight = 1

-- Configure backspace behavior
vim.opt.backspace = "eol,start,indent"

-- Allow wrapping keys (< > h l) to move to previous/next line
vim.opt.whichwrap:append("<,>,h,l") -- Use :append() for options that add flags

-- Nice searching
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Override ignorecase if search pattern has uppercase letters
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Show matches incrementally while typing
vim.opt.lazyredraw = true -- Redraw screen only when needed
vim.opt.magic = true -- Use magic characters in search patterns (usually default)
vim.opt.showmatch = true -- Briefly jump to matching bracket

-- No sound plz
vim.opt.errorbells = false -- Disable error bells
vim.opt.visualbell = false -- Disable visual bell

-- Colors!
-- =======
-- Enable syntax highlighting
vim.cmd("syntax enable") -- Often enabled by default

-- Set colorscheme (make sure 'slate' is installed)
vim.cmd("colorscheme habamax")

-- Set background to dark (helps some colorschemes)
vim.opt.background = "dark"

-- Set file encoding
vim.opt.encoding = "utf8" -- Usually default

-- Configure characters for displaying tabs, end-of-lines, trailing spaces
-- Note the double backslash needed for the space after ▶ in Lua strings
vim.opt.listchars = "eol:¬,tab:▶\\ ,trail:·"
vim.opt.list = true -- Show invisible characters based on listchars

-- Files and backup
-- ================
vim.opt.backup = false -- No backup files
vim.opt.writebackup = false -- No backup during write
vim.opt.swapfile = false -- No swap files

-- Text and tabs
-- ============
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smarttab = true -- Be smart about tabs at line start
vim.opt.shiftwidth = 4 -- Number of spaces for indentation
vim.opt.tabstop = 4 -- Number of spaces a tab character represents

vim.opt.linebreak = true -- Wrap lines at convenient places (avoids breaking words)
vim.opt.textwidth = 500 -- Maximum line width (wrap happens if wrap is on) -- 500 seems very high, maybe intended 80 or 120?

vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.wrap = true -- Wrap long lines
vim.opt.number = true -- Show line numbers

-- Status line visibility (1: only if >1 window, 2: always, 0: never)
-- Neovim default is 2, setting to 1 matches the Vimscript
vim.opt.laststatus = 1

-- Shortcuts
-- =========
-- Map 'jk' in insert mode to Escape
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Escape insert mode" }) -- Added silent and desc

-- Setup lazy
require("config.lazy")
