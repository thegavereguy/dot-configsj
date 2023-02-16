local _M = {}

local awful = require("awful")
-- local wibox = require("wibox")
-- local debugger = require("tools.debug")


function _M.init()

	awful.screen.connect_for_each_screen(function (s)

		-- Initialise screen variable in tags object
    local tags = require("main.tags")

		--awful.tag({ "Ciao", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])
		-- Adds tag to the scrren
		-- awful.tag.add("5", tags.dafault)
		tags.dafault.selected = true
		 awful.tag.add("Main", {
			 layout = awful.layout.suit.spiral,
			 screen = s,
			 selected = true,
			 gap = 15
		 })
		awful.tag.add("Uni", {
			 layout = awful.layout.suit.spiral,
			 screen = s,
			 gap = 15
		 })
		awful.tag.add("Musica", {
			 layout = awful.layout.suit.spiral,
			 screen = s,
			 gap = 15
		 })

		 awful.tag.add("Code", {
			 layout = awful.layout.suit.spiral,
			 screen = s,
			 gap = 15
		 })


		-- awful.tag.add("Def", tags.dafault)

	end
	)

end

return _M
