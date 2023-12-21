local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

-- indention
opt.autoindent = true -- auto indentation
opt.expandtab = true -- convert tabs to spaces
opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
opt.smartindent = true -- make indenting smarter
opt.softtabstop = 2 -- when hitting <BS>, pretend like a tab is removed, even if spaces
opt.tabstop = 2 -- insert 2 spaces for a tab
opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"

-- editor
opt.number = true -- set numbered lines in editor
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.wrap = false -- display a long line
opt.cmdheight = 0 -- more space in the neovim command line for displaying messages

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors
cmd.colorscheme("catppuccin")
