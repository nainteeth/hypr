-- === Float ===
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true })
hl.window_rule({ match = { class = "^(firefox)$", title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ match = { class = "spotify", title = "Picture in picture" }, float = true })
hl.window_rule({ match = { class = "^(xdg-desktop-portal)$" }, float = true })

-- === Opaque ===
hl.window_rule({ match = { class = "com.discordapp.Discord" }, opaque = true })
hl.window_rule({ match = { class = "^discord$" }, opaque = true })
hl.window_rule({ match = { class = "^org.mozilla.firefox$" }, opaque = true })

-- === Workspace assignments ===
hl.window_rule({ match = { class = "dev.zed.Zed" }, workspace = "1" })
hl.window_rule({ match = { class = "org.mozilla.firefox" }, workspace = "2" })
hl.window_rule({ match = { class = "com.discordapp.Discord" }, workspace = "3" })
hl.window_rule({ match = { class = "^discord$" }, workspace = "3" })
hl.window_rule({ match = { class = "signal" }, workspace = "5 silent" })
hl.window_rule({ match = { class = "spotify" }, workspace = "5" })
hl.window_rule({ match = { class = "org.keepassxc.KeePassXC" }, workspace = "9" })
hl.window_rule({ match = { class = "steam" }, workspace = "10" })
hl.window_rule({ match = { class = "net.lutris.Lutris" }, workspace = "10" })
hl.window_rule({ match = { class = "sh.ppy.osu" }, workspace = "10" })
hl.window_rule({ match = { class = "Minecraft*" }, workspace = "10" })
hl.window_rule({ match = { class = "org.prismlauncher.PrismLauncher" }, workspace = "10" })

-- === Misc ===
hl.window_rule({ match = { class = "^(steam)$", title = "^(notificationtoasts)" }, no_focus = true, pin = true })

-- === XWayland Video Bridge ===
hl.window_rule({
    match = {
        class = "^(xwaylandvideobridge)$"
    },
    opacity = "0.0 override",
    no_anim = true,
    no_blur = true,
    no_focus = true,
    no_initial_focus = true,
    max_size = { 1, 1 },
    workspace = "special:videobridge silent"
})
