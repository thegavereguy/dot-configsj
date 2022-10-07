local _M = {}

local awful = require("awful")
local wibox = require("wibox")

local tags = require("main.tags")

function _M.init()

	awful.screen.connect_for_each_screen(function (s)

		-- Initialise screen variable in tags object
		tags.init(s)

		-- Adds tag to the scrren
		awful.tag.add("6", tags.dafault)
		awful.tag.add("5", tags.dafault)
		awful.tag.add("4", tags.dafault)
		awful.tag.add("3", tags.dafault)
		awful.tag.add("2", tags.dafault)

		tags.dafault.selected = true
		awful.tag.add("Def", tags.dafault)

	end
	)

end

return _M
