-- set leader
vim.api.nvim_set_keymap('n' , '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- set for hlsearch
vim.api.nvim_set_keymap('n' , '<Leader>h', 'set hlsearch!<CR>', { noremap = true, silent = true })
-- set for explore
vim.api.nvim_set_keymap('n' , '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better windows move
vim.api.nvim_set_keymap('n' , '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n' , '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n' , '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n' , '<C-l>', '<C-w>l', { silent = true })

-- beter indenting
vim.api.nvim_set_keymap('v' , '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v' , '>', '>gv', { noremap = true, silent = true })

-- jk to esc
vim.api.nvim_set_keymap('i' , 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i' , 'jj', '<Esc>', { noremap = true, silent = true })

-- tab switch
vim.api.nvim_set_keymap('n' , '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- move line
vim.api.nvim_set_keymap('x' , 'J', ':move \'>+1<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x' , 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })

-- tab complete
-- vim.api.nvim_set_keymap('i' , '<expr><TAB>', 'pumvisible() ? \"<C-n>\" : \"<TAB>\"', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "==", "<cmd>Neoformat<CR>", { noremap = true, silent = true })
