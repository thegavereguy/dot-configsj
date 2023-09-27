local Options = vim.opt
local global = vim.g		--global variables

Options.number = true
Options.modifiable = true
Options.encoding = 'utf-8'
Options.hidden = true
Options.cursorline = false
Options.tabstop = 2
Options.shiftwidth = 2
Options.cmdheight = 1
Options.updatetime = 300
Options.completeopt = {'menuone', 'preview', 'noinsert', 'noselect'}
Options.showmode = false			-- nascone la modalita dalla barra
Options.termguicolors = true
Options.pumheight = 15
Options.smartindent = true
Options.smartcase = true
Options.undofile = true
Options.cursorline = true
Options.signcolumn = "yes"
Options.wrap = false
Options.scrolloff = 10				-- numero minimo di righe sotto/sopra al documento visualizzato prima di scrollare
Options.sidescrolloff = 10		-- stessa roba ma orizzontale
Options.foldcolumn = 'auto'   -- imposta la colonna per visualizzare le ripiegature


-- Formatters options
-- Rust
global.formatdef_rustfmt = '"rustfmt"'
global.formatters_rust = {'rustfmt'}
global.rust_raccomended_style = 0;

-- JS
