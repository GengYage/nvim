return {
  ['rust-analyzer'] = {
    imports = {
      granularity = {
        group = "module",
      },
      prefix = "self",
    },
    cargo = {
      buildScripts = {
        enable = true,
      },
      autoReload = true,
    },
    procMacro = {
      enable = true
    },
    checkOnSave = {
      allTargets = false,
    },
  }
}
