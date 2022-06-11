return {
	settings = {

		["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
                exprFillDefault = "todo",
            },
            cargo = {
                autoReload = true,
                loadOutDirsFromCheck = true,
            },
            procMacro = {
                enable = true
            },
            checkOnSave = {
                allTargets = false,
            },
            server = {
                path = "/home/isbest/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer"
            },
        }
	},
}
