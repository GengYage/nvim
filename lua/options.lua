vim.o.number = true
vim.o.hlsearch = true
-- set tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.cursorline = true

vim.o.wrap = true
vim.o.completeopt = "menu,menuone,noselect"

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

