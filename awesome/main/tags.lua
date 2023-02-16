local _M = {}

S = nil
Layouts = require("main.layouts")()


_M = {
	dafault = {
		screen = nil,
		gap = 15,
		layout = Layouts[1]
	}
}

function _M.init(screen)
	S = screen
end

function _M.default(screen)
	local layout = _M.dafault;
	layout.screen = screen;

	return layout;
end

return _M
