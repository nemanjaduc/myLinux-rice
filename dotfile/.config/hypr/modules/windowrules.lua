-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-----------------------------------
------ WINDOWS AND WORKSPACES -----
-----------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrules that are useful
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})
-- Hyprland-run hl.window_rule({
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "AlacrittyNmtui",
	match = { title = "AlacrittyNmtui" },
	float = true,
	center = true,
	size = "800 600",
})

hl.window_rule({
	name = "Satty",
	match = { title = "satty" },
	float = true,
	center = true,
	size = "1280 768",
})

hl.window_rule({
	name = "float-nwg-displays",
	match = { class = "^(nwg-displays)$" },
	float = true,
	opaque = true,
	size = "1102 662",
	center = true,
})

hl.window_rule({
	name = "float_qbittorrent_all",
	match = { class = "^(org.qbittorrent.qBittorrent)$" },
	float = true,
	center = true,
	size = "650 450",
})

hl.window_rule({
	name = "tile_qbittorrent_main",
	match = {
		class = "^(org.qbittorrent.qBittorrent)$",
		title = "^(qBittorrent v).*$",
	},
	float = false,
})

hl.window_rule({
	name = "steam-general",
	match = { class = "^(steam)$" },
	float = false,
	opaque = true,
})

hl.window_rule({
	name = "steam-main-window",
	match = {
		class = "^(steam)$",
		title = "^(Steam)$",
	},
	size = "1100 600",
	center = true,
})

hl.window_rule({
	name = "steam-friends",
	match = {
		class = "^(steam)$",
		title = "^(Friends List)$",
	},
	float = true,
	size = "460 580",
	center = true,
})

hl.window_rule({
	name = "steam-settings",
	match = {
		class = "^(steam)$",
		title = "^(Steam Settings)$",
	},
	float = true,
	size = "1100 600",
	center = true,
})

hl.window_rule({
	name = "steam-special-offers",
	match = {
		class = "^(steam)$",
		title = "^(Special Offer)$",
	},
	float = true,
	center = true,
})

hl.window_rule({
	name = "steam-idle",
	match = { class = "^(steam)$" },
	idle_inhibit = "fullscreen",
})

hl.window_rule({
	name = "cava",
	match = { class = "^(cava)$" },
	float = true,
	size = "791 488",
	center = true,
})

hl.window_rule({
	name = "btop",
	match = { title = "^(btop)$" }, -- removed leading space
	float = true,
	size = "1080 607",
	center = true,
})

hl.window_rule({
	match = { class = "^(org.pulseaudio.pavucontrol)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(waypaper)$" },
	float = true,
})

-- rofi blur
hl.layer_rule({
	match = { namespace = "rofi" },
	blur = true,
	ignore_alpha = 0,
})

hl.window_rule({
	match = { class = ".*osu.*" },
	immediate = 1,
})
