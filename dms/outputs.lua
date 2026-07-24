-- Per-output monitor rules — embedded sibling of the legacy outputs.conf fragment. Deploy writes ~/.config/hypr/dms/outputs.lua

hl.monitor({
    output   = "DP-1",
    mode     = "preferred",
    position = "0x0",
    scale    = "2",
})

hl.monitor({
    output   = "DP-2",
    mode     = "preferred",
    position = "1920x0",
    scale    = "1",
})
