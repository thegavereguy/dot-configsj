require("plugins.vimtex")
require("plugins.statusline")
require("plugins.autopairs")
require("plugins.dap")
-- require("plugins.indent")
require("plugins.fidget")
require("plugins.lspsaga")
require("plugins.latex")
require("plugins.formatter")
-- require("plugins.hover")

require("nvim-treesitter.configs").setup {highlight = {enable = true}}

require("crates").setup();
require("rust-tools").setup();
