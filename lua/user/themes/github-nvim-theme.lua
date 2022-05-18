require("github-theme").setup({
  theme_style = "dimmed",
  transparent = true,
  hide_inactive_statusline = false,

  -- Overwrite the highlight groups
  overrides = function()
    return {
      Visual = { style = 'inverse' },
      Search = { style = 'inverse' },
    }
  end
})
