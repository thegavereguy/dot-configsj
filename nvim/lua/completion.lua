-- local lspconfig = require('lspconfig')


local coq = vim.g.coq_settings

local window_borders = {
	{'┏', "NormalFloat"},
	{'━', "NormalFloat"},
	{'┓', "NormalFloat"},
	{'┃', "NormalFloat"},
	{'┛', "NormalFloat"},
	{'━', "NormalFloat"},
	{'┗', "NormalFloat"},
	{'┃', "NormalFloat"},
}

vim.g.coq_settings = {
	["xdg"] = false,
	["auto_start"] = "shut-up",
	["display.preview.border"] = window_borders,
	["display.icons.mode"] = "long",
	["display.pum.source_context"] = {"[", "]"},
	["display.pum.kind_context"] = {"<", ">"},
	["display.ghost_text.context"] = {" ", " "}
}

