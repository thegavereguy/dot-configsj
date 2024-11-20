local util = require("formatter.util")

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        cpp = {

            function()
                return {
                    exe = "clang-format",
                    args = {
                        "--style='{BasedOnStyle: Google, AlignConsecutiveAssignments: true}'",
                        util.escape_path(util.get_current_buffer_file_path())
                    },
                    stdin = true

                }
            end
        },
        c = {

            function()
                return {
                    exe = "clang-format",
                    args = {
                        "--style='{BasedOnStyle: Google, AlignConsecutiveAssignments: true}'",
                        util.escape_path(util.get_current_buffer_file_path())
                    },
                    stdin = true

                }
            end
        },

        typescriptreact = {
            require("formatter.filetypes.typescriptreact").prettierd
        },
        typescript = {require("formatter.filetypes.typescript").prettierd},
        javascript = {require("formatter.filetypes.javascript").prettierd},
        css = {require("formatter.filetypes.css").prettierd},
        lua = {require("formatter.filetypes.lua").luaformat},
        rust = {require("formatter.filetypes.rust").rustfmt}

    }
}
