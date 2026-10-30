--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/configuring/core/rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "transparancy",
    match = {
        class = "^.*$"
    },
    opacity = "0.5 0.5 1.0",
})

hl.window_rule({
        name = "opacity",
        match = {
            class = [[^(firefox)|(org\.kde\.kate)|(org\.kde\.dolphin)|(kitty)|(scriptkitty_?l?a?s?t?)|(steam_app_3655376814)|(gimp)|(Tor Browser)|(com\.interversehq\.qView)|(galculator)|(org\.gnome\.baobab)$]]
        },
        opacity = "1.0 1.0 1.0",
})

hl.window_rule({
    name = "nonfloat",
    match = {
        class = [[^(blender)|(xdg-desktop-portal-gtk)$]]
    },
    opacity = "1.0 1.0 1.0",
    float = false,
})

hl.window_rule({
    name = "float",
    match = {
        class = [[^(nekokun)$]]
    },
    opacity = "1.0 1.0 1.0",
    float = true,
    size = { 480, 140 },
    move = { 2, 1298 },
    no_blur = true,
})

hl.window_rule({
    name = "steamonscreen",
    match = {
        title = [[^(Steam Input On-screen Keyboard)$]]
    },
    opacity = "0.5 0.5 1.0",
    move = {320, 720}
})
