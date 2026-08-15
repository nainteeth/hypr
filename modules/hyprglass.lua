local theme = require("modules.theme")
local current_theme = theme.current()
local is_light = current_theme == "light"

if hl.plugin.hyprglass then
    local hg = hl.plugin.hyprglass

    hg.config({
        default_theme = current_theme,
        default_preset = "clear",
        tint_color = is_light and 0x94a3b822 or 0x0f172a66,

        brightness = 0.6,
        dark = { brightness = 0.78 },
        light = { adaptive_boost = 0.65 },

        layers = { enabled = 1 },
    })

    -- Layer surfaces: each call whitelists the namespace and configures it
    hg.layer("waybar", { preset = "subtle", mask_threshold = 0.05 })
    hg.layer("swaync")
    hg.layer("quickshell:bezel", { preset = "ui", mask_threshold = 0.3 })
    hg.layer("debug-panel", { exclude = true })

    -- Presets
    hg.preset("clear", {
        glass_opacity = is_light and 0.76 or 0.84,
        blur_strength = 1.5,
        dark = { brightness = 0.7 },
        light = { brightness = 0.96 },
    })

    hg.preset("contrasted", {
        inherits = "high_contrast",
        contrast = 1.2,
        adaptive_dim = 1.5,
        dark = { tint_color = 0x02142aa9 },
    })
end
