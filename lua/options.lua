local options = {
  number = true,
  -- tab --
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,

  -- indent --
  smartindent = true,

  -- list cahrs --
  --
  listchars = { space = '·', tab = ' ➛', eol = '' },
  list = true,

  -- search --
  hlsearch = true,
  ignorecase = true,
  smartcase = true,

  -- others --
  termguicolors = true,
  fileencoding = 'utf-8',
  clipboard = 'unnamedplus',
  showmatch = true,
  swapfile = false,
  cursorline = true,
  signcolumn = 'yes',

  -- fold --
  foldcolumn = '1',
  foldlevel = 99,
  foldlevelstart = 99,
  foldenable = true,
}

vim.opt.shortmess:append 'c'

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[nohlsearch]])
