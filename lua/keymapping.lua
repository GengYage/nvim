local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- set leader
keymap('n' , '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ';'

-- set for hlsearch
keymap('n' , '<Leader>l', 'set hlsearch!<CR>', opts)
-- set for explore
keymap('n' , '<Leader>e', ':NvimTreeToggle<CR>', opts)
keymap('n' , '<Leader>f', ':NvimTreeFindFile<CR>', opts)

--save buffer
keymap('n', '<Leader>w', ':w<CR>', opts)

-- better windows move
keymap('n' , '<C-h>', '<C-w>h', opts)
keymap('n' , '<C-j>', '<C-w>j', opts)
keymap('n' , '<C-k>', '<C-w>k', opts)
keymap('n' , '<C-l>', '<C-w>l', opts)

-- beter indenting
keymap('v' , '<', '<gv', opts)
keymap('v' , '>', '>gv', opts)

-- jk to esc
keymap('i' , 'jk', '<Esc>', opts)
keymap('i' , 'jj', '<Esc>', opts)

-- tab switch
keymap('n' , '<TAB>', ':bnext<CR>', opts)
keymap('n' , '<S-TAB>', ':bprevious<CR>', opts)

-- Move text up and down
keymap("v", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("v", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

keymap("n", "==", "<cmd>Neoformat<CR>", opts)
