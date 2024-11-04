local wezterm = require("wezterm")
local c = wezterm.config_builder()

c.color_scheme = "Vesper"
c.enable_tab_bar = false
c.enable_scroll_bar = false
c.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
c.font = wezterm.font("HackNerdFontMono")

return c
