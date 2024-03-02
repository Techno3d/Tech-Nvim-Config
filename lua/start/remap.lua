function nnoremap(seq, cmd)
	vim.keymap.set("n", seq, cmd)
end

function inoremap(seq, cmd)
	vim.keymap.set("i", seq, cmd)
end

function vnoremap(seq, cmd)
	vim.keymap.set("v", seq, cmd)
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
nnoremap("<C-s>", vim.cmd.write)

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")

nnoremap("<leader>y:", "\"+y")
vnoremap("<leader>y:", "\"+y")
inoremap("<leader>Y:", "\"+y")

nnoremap("<tab>",  ":bnext<CR>")
nnoremap("<S-tab>",  ":bprevious<CR>")

-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>",  "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
