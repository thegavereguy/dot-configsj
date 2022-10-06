local _M = {
	-- {{{ Variable definitions
	-- Themes define colours, icons, font and wallpapers.
	-- beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")
	theme = "default",

	-- This is used later as the default terminal and editor to run.
	terminal = "kitty",
	editor = os.getenv("EDITOR") or "nvim",

	-- Default modkey.
	-- Usually, Mod4 is the key with a logo between Control and Alt.
	-- If you do not like this or do not have such a key,
	-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
	-- However, you can use another modifier like Mod1, but it may interact with others.
	modkey = "Mod4"


}

return _M
