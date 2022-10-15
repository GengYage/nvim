local opts = { noremap = true, silent = true }

-- 映射vimapi
local keymap = vim.api.nvim_set_keymap;
-- 映射vim命令
local keymapcmd = vim.keymap.set;

--[[
  VIM KEYMAP
--]]
-- set leader
keymap('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ';'

-- set hlsearch
keymap('n', '<Leader>l', ':set nohlsearch<CR>', opts)
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- set windowns move
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- jk to esc
keymap('i', 'jk', '<ESC>', opts)

-- tab to switch buffer
keymap('n', '<TAB>', ':bNext<CR>', opts)

-- shift + k to move up
-- shift + j to move down
keymap('v', 'K', ':m -2<CR>', opts)
keymap('v', 'J', ':m +1<CR>', opts)

-- tab completion
-- keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', opts)

--[[
LSP KEYMAP other keymap in configs.lsp.handler
--]]
-- 显示提示
keymapcmd('n', '<space>f', vim.diagnostic.open_float, opts)
-- 上一个错误
keymapcmd('n', '[d', vim.diagnostic.goto_prev, opts)
-- 下一个错误
keymapcmd('n', ']d', vim.diagnostic.goto_next, opts)
-- 展示所有问题
-- telecsope
-- keymapcmd('n', '<space>q', vim.diagnostic.setloclist, opts)

--[[
telescope
--]]
local builtin = require('telescope.builtin')
keymapcmd('n', 'ff', builtin.find_files, {})
keymapcmd('n', 'fg', builtin.live_grep, {})
keymapcmd('n', 'fb', builtin.buffers, {})
-- telecsope lsp keymap
-- 展示所有问题
keymapcmd('n', '<space>q', builtin.diagnostics, {})
-- 所有的定义
keymapcmd('n', 'gd', builtin.lsp_definitions, {})
-- 所有的实现
keymapcmd('n', 'gi', builtin.lsp_implementations, {})
-- 所有的引用
keymapcmd('n', 'gr', builtin.lsp_references, {})
-- telescope git
-- 展示所有commit
keymapcmd('n', 'gc', builtin.git_commits, {})
-- 展示所有branch
keymapcmd('n', 'gb', builtin.git_branches, {})
-- 展示所有status
keymapcmd('n', 'gs', builtin.git_status, {})

-- ufo增强代码预览
-- za 打开或者关闭当前行折叠
-- zc 折叠当前行
-- zo 关闭当前行折叠
keymapcmd('n', 'zR', require('ufo').openAllFolds)
keymapcmd('n', 'zM', require('ufo').closeAllFolds)
keymapcmd('n', 'K', function()
  local winid = require('ufo').peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end)
