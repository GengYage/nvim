local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- get all have installed servers
local servers = require('nvim-lsp-installer').get_installed_servers()

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
-- set for ofu
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}

-- 定义变量
local settings = {}

local on_attach = function()
end
local HANDLER = require('configs.lsp.handler')
-- binding config to all lsp servers
for _, server in pairs(servers) do

  -- lua lsp的特殊配置,将vim设置为全局变量
  if server.name == 'sumneko_lua' then
    settings = require('configs.lsp.settings.sumneko_lua')
    on_attach = HANDLER.on_attach
  end

  -- rust-analyzer@nightly 的特殊配置
  if server.name == 'rust_analyzer' then
    require('rust-tools').setup({
      server = {
        capabilities = capabilities,
        settings = require('configs.lsp.settings.rust_analyzer'),
        on_attach = HANDLER.on_rust_attach,
        standalone = true,
      },
      tools = require('configs.lsp.settings.rust_tools'),
    })
  end

  -- rust 有自己的配置
  if server.name ~= 'rust_analyzer' then
    require('lspconfig')[server.name].setup {
      on_attach = on_attach,
      flags = lsp_flags,
      settings = settings,
      --cmp
      capabilities = capabilities,
      handlers = require('configs.lsp.handler').setup(),
    }
  end
end
