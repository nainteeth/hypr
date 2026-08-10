-- === Application Launchers ===
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("ghostty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus -w"))

-- App launcher / run dialog
-- Requires a launcher such as rofi, wofi, or fuzzel to be installed.
hl.bind("SUPER + SHIFT + space", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + space", hl.dsp.exec_cmd("qs ipc call launcher toggle"))

-- Clipboard history
-- Requires cliphist + rofi/wofi + wl-clipboard.
hl.bind("SUPER + T",
    hl.dsp.exec_cmd([[bash -c "cliphist list | rofi -dmenu | cliphist decode | wl-copy"]]))

-- Opens Plasma System Monitor's process list (KDE's task manager).
hl.bind("SUPER + M", hl.dsp.exec_cmd("plasma-systemmonitor --page-name Processes"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("plasma-systemmonitor --page-name Processes"))

hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("ghostty -e nvim"))

-- Overview (native Hyprland, only works if the hyprexpo plugin is loaded)
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("hyprctl dispatch hyprexpo:expose"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("hyprctl dispatch hyprexpo:expose"))

-- Power menu (replaces dms powermenu)
-- Requires wlogout to be installed.
hl.bind("SUPER + X", hl.dsp.exec_cmd("wlogout"))

hl.bind("SUPER + SHIFT + E", hl.dsp.exit())

-- === Audio Controls ===
-- Replaced with wpctl (PipeWire/WirePlumber), the standard Hyprland audio stack.
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 3%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 3%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- Media control via playerctl (replaces dms mpris)
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd("playerctl volume 0.03+"),
    { locked = true, repeating = true })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd("playerctl volume 0.03-"),
    { locked = true, repeating = true })

-- === Brightness Controls ===
-- Replaced with brightnessctl.
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"),
    { locked = true, repeating = true })

-- === Window Management ===
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + SHIFT + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + W", hl.dsp.group.toggle())

-- === Focus Navigation ===
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))

-- === Window Movement ===
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))

-- === Column Navigation ===
hl.bind("SUPER + Home", hl.dsp.focus({ window = "first" }))
hl.bind("SUPER + End", hl.dsp.focus({ window = "last" }))

-- === Monitor Navigation ===
hl.bind("SUPER + CTRL + left", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + right", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPER + CTRL + H", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + J", hl.dsp.focus({ monitor = "d" }))
hl.bind("SUPER + CTRL + K", hl.dsp.focus({ monitor = "u" }))
hl.bind("SUPER + CTRL + L", hl.dsp.focus({ monitor = "r" }))

-- === Move to Monitor ===
hl.bind("SUPER + SHIFT + CTRL + left", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + down", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + up", hl.dsp.window.move({ monitor = "u" }))
hl.bind("SUPER + SHIFT + CTRL + right", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPER + SHIFT + CTRL + H", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + J", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + K", hl.dsp.window.move({ monitor = "u" }))
hl.bind("SUPER + SHIFT + CTRL + L", hl.dsp.window.move({ monitor = "r" }))

-- === Workspace Navigation ===
hl.bind("SUPER + Page_Down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + Page_Up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + U", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + I", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + I", hl.dsp.window.move({ workspace = "e-1" }))

-- === Move Workspaces ===
hl.bind("SUPER + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + Page_Up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + I", hl.dsp.window.move({ workspace = "e-1" }))

-- === Mouse Wheel Navigation ===
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + mouse_down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + mouse_up", hl.dsp.window.move({ workspace = "e-1" }))

-- === Touchpad Gestures ===
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- === Numbered Workspaces ===
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- === Column Management ===
hl.bind("SUPER + bracketleft", hl.dsp.layout("preselect l"))
hl.bind("SUPER + bracketright", hl.dsp.layout("preselect r"))

-- === Sizing & Layout ===
hl.bind("SUPER + R", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "set" }))

-- === Move/resize windows with mainMod + LMB/RMB and dragging ===
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Move window" })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Resize window" })

hl.bind("SUPER + code:20", hl.dsp.window.resize({ x = -100, y = 0, relative = true }),
    { description = "Expand window left" })
hl.bind("SUPER + code:21", hl.dsp.window.resize({ x = 100, y = 0, relative = true }),
    { description = "Shrink window left" })

-- === Manual Sizing ===
hl.bind("SUPER + minus", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + equal", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + minus", hl.dsp.window.resize({ x = 0, y = -100, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + equal", hl.dsp.window.resize({ x = 0, y = 100, relative = true }), { repeating = true })

-- === Screenshots ===
-- Replaced with grim + slurp + wl-clipboard (standard Wayland screenshot stack).
hl.bind("Print", hl.dsp.exec_cmd([[bash -c "grim -g \"$(slurp)\" - | wl-copy"]]))
hl.bind("CTRL + Print", hl.dsp.exec_cmd([[bash -c "grim - | wl-copy"]]))
hl.bind("ALT + Print", hl.dsp.exec_cmd(
    [[bash -c "grim -g \"$(hyprctl activewindow -j | jq -r '\"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"')\" - | wl-copy"]]))

-- === System Controls ===
hl.bind("SUPER + SHIFT + P", hl.dsp.dpms({ action = "toggle" }))
hl.bind("SUPER + SHIFT + CTRL + Q", hl.dsp.exec_cmd("hyprshutdown"))
