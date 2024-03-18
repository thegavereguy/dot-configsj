-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
-- return
-- end
-- require("neodev").setup({
-- library = { plugins = {
-- "nvim-dap-ui",
-- "indent_blankline"
-- }, types = true },
-- })
require("lsp.mason")
require("lsp.handlers").setup()
-- require("lsp_lines").setup() -- installato nella cartella dei plugin ($HOME/.local/share/nvim/site/pack/plugins/start/)
