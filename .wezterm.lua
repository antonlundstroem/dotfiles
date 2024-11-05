local wezterm = require("wezterm")
local c = wezterm.config_builder()

--c.color_scheme = "Vesper"
c.enable_tab_bar = false
c.enable_scroll_bar = false
c.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

c.font = wezterm.font("HackNerdFontMono")

local scheme = {
	primary = "#A0A0A0",
	bg = "#101010",
	altbg = "#343434",
	fg = "#CCCCCC",
	black = "#505050",
	red = "#FF8080",
	green = "#82D9C2",
	yellow = "#FFCFA8",
	blue = "#8B8B8B",
	magenta = "#FFCFA8",
	cyan = "#FFCFA8",
	white = "#FFFFFF",
}

c.colors = {
	background = scheme.bg,
	foreground = scheme.fg,
	cursor_bg = scheme.fg,
	cursor_fg = scheme.black,
	cursor_border = scheme.fg,
	selection_fg = scheme.black,
	selection_bg = scheme.fg,
	scrollbar_thumb = scheme.fg,
	split = scheme.white,

	ansi = {
		scheme.bg,
		scheme.red,
		scheme.green,
		scheme.yellow,
		scheme.blue,
		scheme.magenta,
		scheme.cyan,
		scheme.fg,
	},
	brights = {
		scheme.white,
		scheme.red,
		scheme.green,
		scheme.yellow,
		scheme.blue,
		scheme.magenta,
		scheme.cyan,
		scheme.bg,
	},
}

return c
