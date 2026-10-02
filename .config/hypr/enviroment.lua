hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- QT
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

hl.env("HYPRCURSOR_THEME", "BreezeX-Dark-hyprcursor")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XCURSOR_THEME", "BreezeX-Dark")
hl.env("XCURSOR_SIZE", "24")
