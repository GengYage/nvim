### 配置的目录结构
```
├── init.lua
├── lua
│   ├── configs
│   │   ├── autopairs.lua
│   │   ├── bufferline.lua
│   │   ├── comment.lua
│   │   ├── cursorline.lua
│   │   ├── dap
│   │   │   ├── dapuiconfig.lua
│   │   │   └── init.lua
│   │   ├── hlarg.lua
│   │   ├── init.lua
│   │   ├── lsp
│   │   │   ├── cmp.lua
│   │   │   ├── config.lua
│   │   │   ├── handler.lua
│   │   │   ├── init.lua
│   │   │   ├── installer.lua
│   │   │   ├── lspline.lua
│   │   │   ├── lspprogress.lua
│   │   │   └── settings
│   │   │       ├── rust_analyzer.lua
│   │   │       ├── rust_tools.lua
│   │   │       └── sumneko_lua.lua
│   │   ├── number.lua
│   │   ├── nvimtree.lua
│   │   ├── sittercontext.lua
│   │   ├── surround.lua
│   │   ├── telescope.lua
│   │   ├── theme.lua
│   │   ├── treesitter.lua
│   │   ├── ufoconfig.lua
│   │   └── whichkey.lua
│   ├── keymap.lua
│   ├── options.lua
│   └── plugins.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```
已经将大部分配置都放在了 `lua/keymap`目录下
另外有部分配置 如surround lsp 等则在各自对应的配置中

适合日常的文字编辑和简单的代码编写

### TODO

dap 支持
whichkey 支持
