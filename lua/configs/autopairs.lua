require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt", "spectre_panel", "dap-repl", "guihua", "guihua_rust", "clap_input" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
})

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp = require('cmp')

if not cmp then
  return
end

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
