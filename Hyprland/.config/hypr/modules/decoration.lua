---------------------
--- LOOK AND FEEL ---
---------------------

-- Refer to https://wiki.hypr.land/Configuring/Variables/
-- https://wiki.hypr.land/Configuring/Variables/-general
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 7,
		gaps_workspaces = 50,
		border_size = 1,

		-- https://wiki.hypr.land/Configuring/Variables/-variable-types for info about colors
		col = {
			--active_border = "$primary",
			inactive_border = "rgba(595959aa)",
		},

		-- Set to true enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	-- https://wiki.hypr.land/Configuring/Variables/-decoration
	decoration = {
		rounding = 10,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 5,
			render_power = 10,
			color = 0xee1a1a1a,
		},

		-- https://wiki.hypr.land/Configuring/Variables/-blur
		blur = {
			enabled = true,
			size = 3,
			passes = 5,
			vibrancy = 0.1696,
		},
	},
})
