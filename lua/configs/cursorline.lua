require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 100,
    number = true,
  },
  cursorword = {
    enable = true,
    min_length = 2,
    hl = { underline = true },
  }
}
