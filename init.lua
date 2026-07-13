-- Techno's Nvim Config

-- Early UI2 enable
require("vim._core.ui2").enable({})

-- Use space as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.relativenumber = true
vim.opt.showmode = false

-- Saves undo history
-- vim.opt.undofile = true

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 400

-- vim.opt.inccommand = 'split'
vim.opt.cursorline = true

vim.opt.scrolloff = 10
-- This should make escape in normal mode remove search highlight
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Tab options
vim.opt.tabstop = 4 -- Default tab of 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 -- `>>` shifting shifts by 4
vim.opt.expandtab = true -- Expand tab to spaces !!
vim.opt.smartindent = true -- Follows indenting of file

-- Terminal Stuff
vim.opt.termguicolors = true -- For 24bit color support


-- Movement options (between splits)
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>",  "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Use oil as filebrowser
vim.keymap.set("n", "<leader>fe", "<CMD>Oil<CR>")

-- The tab/buffer keybinds
vim.keymap.set("n", "<tab>",  ":bnext<CR>")
vim.keymap.set("n", "<leader>bn",  ":bnext<CR>")
vim.keymap.set("n", "<S-tab>",  ":bprevious<CR>")
vim.keymap.set("n", "<leader>bp",  ":bprevious<CR>")
vim.keymap.set("n", "<leader>bd",  ":bd<CR>")
vim.keymap.set("n", "<leader>bx",  ":bd!<CR>")
vim.keymap.set("n", "<leader>bl",  ":buffers<CR>")

-- Completion menu
-- vim.opt.completeopt = {"menu"}

-- Vim Pack!!
vim.pack.add({
    { src = "https://github.com/rose-pine/neovim", name = "rose-pine" },
--    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/stevearc/oil.nvim"
})

-- Builtins
vim.cmd.packadd("nvim.undotree")

-- Telescope stuff
-- require("telescope").setup()
-- vim.keymap.set("n", "<leader>bf", require("telescope.builtin").buffers)
-- vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)

-- Theme setup
require("rose-pine").setup()
vim.cmd("colorscheme rose-pine")

-- Oil for files
require("oil").setup()

-- Mason setup for LSPs
require("mason").setup()

-- LSP & Autocomplete
vim.opt.completeopt = { "menuone", "fuzzy", "noselect", "popup" } 
vim.opt.complete = ".,o" -- use buffer and omnifunc
vim.o.autocomplete = true

-- Set autocomplete on LspAttach
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, {
      autotrigger = true,
    })
  end,
})
-- Enable lsps
vim.lsp.enable({"pyright", "emmylua_ls", "rust-analyzer", "clangd"})
