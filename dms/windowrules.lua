-- DMS Window Rules — managed by DankMaterialShell
-- Do not edit manually; changes may be overwritten

-- DMS-RULE: id=dms_rule_0, name=
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true })

-- DMS-RULE: id=dms_rule_2, name=
hl.window_rule({ match = { class = "spotify", title = "Picture in picture" }, float = true })

-- DMS-RULE: id=dms_rule_3, name=
hl.window_rule({ match = { class = "dev.zed.Zed" }, workspace = "1" })

-- DMS-RULE: id=dms_rule_4, name=
hl.window_rule({ match = { class = "org.mozilla.firefox" }, workspace = "2" })

-- DMS-RULE: id=dms_rule_6, name=
hl.window_rule({ match = { class = "signal" }, workspace = "5 silent" })

-- DMS-RULE: id=dms_rule_7, name=com.discordapp.Discord
hl.window_rule({ match = { class = "com.discordapp.Discord" }, opaque = true, workspace = "3" })

-- DMS-RULE: id=dms_rule_8, name=
hl.window_rule({ match = { class = "spotify" }, workspace = "5" })

-- DMS-RULE: id=dms_rule_9, name=
hl.window_rule({ match = { class = "steam" }, workspace = "10" })

-- DMS-RULE: id=dms_rule_10, name=
hl.window_rule({ match = { class = "net.lutris.Lutris" }, workspace = "10" })

-- DMS-RULE: id=dms_rule_11, name=sh.ppy.osu
hl.window_rule({ match = { class = "sh.ppy.osu" }, workspace = "10" })

-- DMS-RULE: id=dms_rule_12, name=
hl.window_rule({ match = { class = "Minecraft*" }, workspace = "10" })

-- DMS-RULE: id=dms_rule_13, name=
hl.window_rule({ match = { class = "org.prismlauncher.PrismLauncher" }, workspace = "10" })

-- DMS-RULE: id=dms_rule_14, name=
hl.window_rule({ match = { class = "org.keepassxc.KeePassXC" }, workspace = "9" })

-- DMS-RULE: id=wr_1784838224474583176, name=org.mozilla.firefox
hl.window_rule({ match = { class = "^org.mozilla.firefox$" }, opaque = true })

-- DMS-RULE: id=wr_1784838270012772049, name=discord
hl.window_rule({ match = { class = "^discord$" }, opaque = true, workspace = "3" })

-- DMS-RULE: id=dms_rule_17, name=
hl.window_rule({ match = { class = "^(xdg-desktop-portal)$" }, float = true })

-- DMS-RULE: id=dms_rule_17, name=
hl.window_rule({ match = { class = "^(steam)$", title = "^(notificationtoasts)" }, no_focus = true, pin = true })

-- DMS-RULE: id=dms_rule_18, name=
hl.window_rule({ match = { class = "^(firefox)$", title = "^(Picture-in-Picture)$" }, float = true })
