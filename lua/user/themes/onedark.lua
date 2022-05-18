require('onedark').setup {
  -- Main options --
  style = 'warm', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true, -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },
  -- Custom Highlights --
  colors = {
    bright_orange = "#ff8800", -- define a new color
    green = '#00ffaa', -- redefine an existing color
  },

  highlights = {
    TSKeyword = { fg = '$green' },
    TSString = { fg = '$bright_orange', bg = '#00ff00', fmt = 'bold' },
    TSFunction = { fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic' },
  },

  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },

}

require('onedark').load()
