if hl.plugin.hyprglass then
    local hg = hl.plugin.hyprglass

    hg.config({
        default_theme = "dark",
        default_preset = "glassy",
        tint_color = 0x77777711,
        bevel_size = 8,
        bevel_strength = 0.0,
        bevel_shadow = 0.65,
        brightness = 0.9,
        dark = { brightness = 0.82 },
        light = { adaptive_boost = 0.5 },

        layers = { enabled = true },
    })

    -- Layer surfaces: each call whitelists the namespace and configures it
    hg.layer("waybar", { preset = "subtle", mask_threshold = 0.05 })
    hg.layer("swaync")
    hg.layer("quickshell:bezel", { preset = "ui", mask_threshold = 0.3 })
    hg.layer("debug-panel", { exclude = true })

    -- Presets
    hg.preset("clear", {
        glass_opacity = 1.0,
        blur_strength = 1.5,
        dark = { brightness = 0.7 },
        light = { brightness = 1.2 },
    })

    hg.preset("glassy", {
        inherits = "glass",
        glass_opacity = 1.0,
--        glass_opacity = 0.8,
--        blur_strength = 2.0,
        blur_strength = 0.0,
        dark = { brightness = 0.7 },
        light = { brightness = 1.2 },
        refraction_flow = 0.0,
        refraction_spread = 1.0,
    })

    hg.preset("contrasted", {
        inherits = "high_contrast",
        contrast = 1.25,
        adaptive_dim = 0,
        dark = { tint_color = 0x8899aa22 },
    })
    end
