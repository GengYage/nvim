require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    numbers = "both",
    close_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    buffer_close_icon = '',
    modified_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      }
    },
    color_icons = true,
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    separator_style = 'thin',
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' },
    },
    sort_by = 'insert_after_current',
  }
}
