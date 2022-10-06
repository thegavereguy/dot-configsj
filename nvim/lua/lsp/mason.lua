-- local status_ok, mason = pcall(require, "mason")
-- if not status_ok then
-- 	return
-- end

-- local status_ok, mason_lspconfig = pcall(require, "mason_lspconfig")
-- if not status_ok then
-- 	return
-- end
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup()
mason_lspconfig.setup()

mason_lspconfig.setup_handlers{
	function (server)
		local opts = {
			on_attach = require('lsp.handlers').on_attach,
			capabilities = require('lsp.handlers').capabilities
		}

		if server == "sumneko_lua" then
			local sumneko_opts = require("lsp.settings.sumneko_lua")
	 		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 	end
		require('lspconfig')[server].setup(
			opts
			)
	end
}
