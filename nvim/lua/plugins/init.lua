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
require("plugins.dressing")

require("nvim-treesitter.configs").setup {
    auto_install = true,
    ignore_install = {},
    modules = {},
    ensure_installed = {
        "lua", "vim", "go", "toml", "css", "tsx", "css", "html", "lua"
    },
    highlight = {enable = true, use_languagetree = true},
    autotag = {
        enable = true,
        filetypes = {
            'html', 'javascript', 'typescript', 'javascriptreact',
            'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript', 'css',
            'lua', 'xml', 'php', 'markdown'
        }
    },
    indent = {enable = true}
}

require("crates").setup();
require("rust-tools").setup({
    tools = {executor = require("rust-tools.executors").floaterm}
});
require("toggleterm").setup();
