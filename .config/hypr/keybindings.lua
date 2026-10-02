local terminal = "kitty"
local fileManager = "kitty -e yazi"
local browser = "librewolf"

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local ipc = "noctalia msg "

-- Exec programs
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(browser))

-- Launcher or dmenu
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("~/scripts/open_configs.sh"))

-- Windows
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind(mainMod .. " + ", hl.dsp.layout("togglesplit")) -- dwindle only

--Screenshot
hl.bind("Print", hl.dsp.exec_cmd(ipc .. "screenshot-region"))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(ipc .. "screenshot-fullscreen"))

-- Move focus with mainMod + vim-like keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Lock
hl.bind("CTRL + ALT + L", hl.dsp.exec_cmd(ipc .. "session lock"))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

hl.bind(mainMod .. "+ DOWN", hl.dsp.exec_cmd(ipc .. "brightness-down"))
hl.bind(mainMod .. "+ UP", hl.dsp.exec_cmd(ipc .. "brightness-up"))

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Scrolling layout
-- fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = toggle, layout_aware = true }))

-- Swap window with the right or left one
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.layout("swapcol l"))

-- Resize windows with the period key or comma
hl.bind(mainMod .. " + period", hl.dsp.layout("colresize +0.25"))
hl.bind(mainMod .. " + comma", hl.dsp.layout("colresize -0.25"))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
