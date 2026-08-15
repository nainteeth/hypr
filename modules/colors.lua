local theme = require("modules.theme")
local is_light = theme.is_light()

local palette = is_light and {
    active_border = "rgb(ffffff)",
    inactive_border = "rgb(8a8a8a)",
    locked_border = "rgb(4a4a4a)",
} or {
    active_border = "rgb(000000)",
    inactive_border = "rgb(5a5a5a)",
    locked_border = "rgb(a3a3a3)",
}

hl.config({
    general = {
        col = {
            active_border = palette.active_border,
            inactive_border = palette.inactive_border,
        },
    },
    group = {
        col = {
            border_active = palette.active_border,
            border_inactive = palette.inactive_border,
            border_locked_active = palette.locked_border,
            border_locked_inactive = palette.inactive_border,
        },
        groupbar = {
            col = {
                active = palette.active_border,
                inactive = palette.inactive_border,
                locked_active = palette.locked_border,
                locked_inactive = palette.inactive_border,
            },
        },
    },
})
