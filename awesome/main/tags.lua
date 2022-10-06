local _M = {}

S = nil
Layouts = require("main.layouts")()


_M = {
	dafault = {
		screen = S,
		gap = 15,
		layout = Layouts[1]
	}
}

function _M.init(screen)
	S = screen
end

return _M
