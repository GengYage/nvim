vim.o.number = true
vim.o.hlsearch = true
-- set tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.cursorline = true
-- 自动缩进
vim.o.autoindent = true
-- 显示空白字符
vim.opt.listchars = { space = '·', tab = '>~', eol = '↵'}
vim.opt.list = true

vim.o.wrap = true
vim.o.completeopt = "menu,menuone,noselect"

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

