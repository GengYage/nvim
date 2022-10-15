local HANDLER = {}

HANDLER.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  --round border
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })
  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

HANDLER.on_attach = function(_, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  -- 跳转到定义文档
  -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  -- 跳转到定义
  -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- 展示hover
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  -- 跳转到实现
  -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<space>k', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  -- 重命名
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  -- 对代码进行可选的操作
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  -- 打开所有引用
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- 代码格式化
  vim.keymap.set('n', '==', function() vim.lsp.buf.format { async = true } end, bufopts)
end

HANDLER.on_rust_attach = function(client, bufnr)
  HANDLER.on_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  vim.api.nvim_buf_set_option(bufnr, "tagfunc", "v:lua.vim.lsp.tagfunc")

  vim.keymap.set("n", "<Leader>a", require('rust-tools').code_action_group.code_action_group, { buffer = bufnr })
  vim.keymap.set("n", "<Leader>ca", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr })
end

return HANDLER
