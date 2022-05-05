local colorscheme = "github_light"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then
  require "user.themes.onedark"
end

if colorscheme == "github_light" then
  require "user.themes.github-nvim-theme"
end
