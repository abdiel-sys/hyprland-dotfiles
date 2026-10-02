hl.window_rule({
	name = "browser",
	match = { class = "librewolf" },
	scrolling_width = 0.75,
})

hl.window_rule({
	name = "KeePassXC Unlocking",
	match = { initial_title = "Unlock Database - KeePassXC" },
	float = true,
	center = true,
})
hl.window_rule({
	name = "kdeconnect sending",
	match = { class = "org.kde.kdeconnect.daemon" },
	float = true,
	center = true,
})

hl.window_rule({
	match = { initial_title = "Image Editor" },
	float = true,
	size = { 1280, 920 },
	center = true,
})

hl.window_rule({
	match = { initial_title = "File Browser" },
	float = true,
	size = { 1280, 920 },
	center = true,
})

-- Defaults

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

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	match = { class = "dev.noctalia.Noctalia" },
	float = true,
	size = { 1080, 920 },
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
