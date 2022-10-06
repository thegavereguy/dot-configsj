local naughty = require("naughty")
local _M = {}

function _M.toast(str)
	naughty.notify({
		text = str,
		title = "Debug Toast",
		ontop = true,
		width = 250,
		bg = "yellow",
		fg = "Black"
	})
end

return _M
