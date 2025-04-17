-- Techno's Nvim Config

-- Use space as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.relativenumber = true
vim.opt.showmode = false
-- Saves undo history
-- vim.opt.undofile = true

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

vim.opt.inccommand = 'split'
-- vim.opt.cursorline = true

vim.opt.scrolloff = 10
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smartindent = true

-- Terminal Stuff
vim.opt.termguicolors = true


-- Movement options
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>",  "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Use netrw
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- The tab options
vim.keymap.set("n", "<tab>",  ":bnext<CR>")
vim.keymap.set("n", "<leader>bn",  ":bnext<CR>")
vim.keymap.set("n", "<S-tab>",  ":bprevious<CR>")
vim.keymap.set("n", "<leader>bp",  ":bprevious<CR>")
vim.keymap.set("n", "<leader>bd",  ":bd<CR>")

-- Setting up lazy.nvim
require("config.lazy")
