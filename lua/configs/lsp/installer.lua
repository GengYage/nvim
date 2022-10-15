require("nvim-lsp-installer").setup({
  -- always install
  ensure_installed = { "rust_analyzer@nightly", "sumneko_lua" },

  -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "√",
      server_pending = ">",
      server_uninstalled = ""
    },
    keymaps = {
      -- Keymap to expand a server in the UI
      toggle_server_expand = "<CR>",
      -- Keymap to install the server under the current cursor position
      install_server = "i",
      -- Keymap to reinstall/update the server under the current cursor position
      update_server = "u",
      -- Keymap to check for new version for the server under the current cursor position
      check_server_version = "c",
      -- Keymap to update all installed servers
      update_all_servers = "U",
      -- Keymap to check which installed servers are outdated
      check_outdated_servers = "C",
      -- Keymap to uninstall a server
      uninstall_server = "X",
    },
  }
})
