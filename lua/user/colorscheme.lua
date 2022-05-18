local colorscheme = "github_dimmed"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then
  require "user.themes.onedark"
end

if colorscheme == "github_dimmed" then
  require "user.themes.github-nvim-theme"
end
